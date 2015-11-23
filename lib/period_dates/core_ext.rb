class PeriodDatesIncorrectPeriod < StandardError
end

module Calculations
    def available_periods
      ["monthly","quarterly","biannually","semestral"]
    end

    def prev_period_dates(period='monthly')
        bound_dates = []

        if period == 'monthly'
          bound_dates[0] = self.prev_month.at_beginning_of_month
          bound_dates[1] = self.prev_month.at_end_of_month
        end

        if period == 'quarterly'
          bound_dates[0] = self.prev_quarter.at_beginning_of_quarter
          bound_dates[1] = self.prev_quarter.at_end_of_quarter
        end

        if period == 'biannually' or period == 'semestral'
          bound_dates[0] = self.prev_semester.at_beginning_of_semester
          bound_dates[1] = self.prev_semester.at_end_of_semester
        end

        if !available_periods.include?(period)
          raise PeriodDatesIncorrectPeriod, "Period must be one of this: #{available_periods.join(', ')}."
        else
          bound_dates
        end
    end

    alias :last_period_dates :prev_period_dates

    def next_period_dates(period='monthly')
        bound_dates = []

        if period == 'monthly'
          bound_dates[0] = self.next_month.at_beginning_of_month
          bound_dates[1] = self.next_month.at_end_of_month
        end

        if period == 'quarterly'
          bound_dates[0] = self.next_quarter.at_beginning_of_quarter
          bound_dates[1] = self.next_quarter.at_end_of_quarter
        end

        if period == 'biannually' or period == 'semestral'
          bound_dates[0] = self.next_semester.at_beginning_of_semester
          bound_dates[1] = self.next_semester.at_end_of_semester
        end

        if !available_periods.include?(period)
          raise PeriodDatesIncorrectPeriod, "Period must be one of this: #{available_periods.join(', ')}."
        else
          bound_dates
        end
    end

    def current_period_dates(period='monthly')
        bound_dates = []

        if period == 'monthly'
          bound_dates[0] = self.at_beginning_of_month
          bound_dates[1] = self.at_end_of_month
        end

        if period == 'quarterly'
          bound_dates[0] = self.at_beginning_of_quarter
          bound_dates[1] = self.at_end_of_quarter
        end

        if period == 'biannually' or period == 'semestral'
          bound_dates[0] = self.at_beginning_of_semester
          bound_dates[1] = self.at_end_of_semester
        end

        if !available_periods.include?(period)
          raise PeriodDatesIncorrectPeriod, "Period must be one of this: #{available_periods.join(', ')}."
        else
          bound_dates
        end
    end

    def offset_period_dates(offset=0,period='monthly')
        bound_dates = self.current_period_dates(period)

        if !available_periods.include?(period)
          raise PeriodDatesIncorrectPeriod, "Period must be one of this: #{available_periods.join(', ')}."
        else
          offset.abs.times do |time|
            if offset > 0
              bound_dates = bound_dates[0].next_period_dates(period)
            elsif offset < 0
              bound_dates = bound_dates[0].prev_period_dates(period)
            end
          end

          bound_dates
        end
    end

end

Date.class_eval do
  include Calculations
end

DateTime.class_eval do
  include Calculations
end