require 'test_helper'

class CoreExtTest < ActiveSupport::TestCase

  #DATE TIME TESTS  - Monthly period
  def test_date_time_last_period_dates
    date = DateTime.new(2015,4,3)
    date_from = date.prev_month.at_beginning_of_month
    date_to = date.prev_month.at_end_of_month
    dates = date.last_period_dates
    assert_equal dates[0], date_from
    assert_equal dates[1], date_to

    dates = date.prev_period_dates
    assert_equal dates[0], date_from
    assert_equal dates[1], date_to
  end

  def test_date_time_last_period_dates_2
    date = DateTime.new(2015,2,2)
    date_from = DateTime.new(2014,10,1)
    date_to = DateTime.new(2014,12,1).at_end_of_month

    dates = date.prev_period_dates('quarterly')
    assert_equal dates[0], date_from
    assert_equal dates[1], date_to
  end


  def test_date_time_last_period_dates_3
    date = DateTime.new(2015,2,2)
    date_from = DateTime.new(2014,7,1)
    date_to = DateTime.new(2014,12,1).at_end_of_month
    # TESTING ALSO DEPENDENCY FORM SEMESTER
    dates = date.prev_period_dates('biannually')
    assert_equal dates[0], date_from
    assert_equal dates[1], date_to
  end


  def test_date_time_current_period_dates
    date = DateTime.new(2015,4,3)
    date_from = date.at_beginning_of_month
    date_to = date.at_end_of_month
    dates = date.current_period_dates
    assert_equal dates[0], date_from
    assert_equal dates[1], date_to
  end

  def test_date_time_next_period_dates
    date = DateTime.new(2015,4,3)
    date_from = date.next_month.at_beginning_of_month
    date_to = date.next_month.at_end_of_month
    dates = date.next_period_dates
    assert_equal dates[0], date_from
    assert_equal dates[1], date_to
  end

  def test_date_time_offset_period_dates
    date = DateTime.new(2015,4,3)
    date_from = date.at_beginning_of_month
    date_to = date.at_end_of_month
    dates = date.offset_period_dates
    assert_equal dates[0], date_from
    assert_equal dates[1], date_to
  end

  def test_date_time_offset_period_dates_2
    date = DateTime.new(2015,4,3)
    date_from = date.prev_month.at_beginning_of_month
    date_to = date.prev_month.at_end_of_month
    dates = date.offset_period_dates(-1)
    assert_equal dates[0], date_from
    assert_equal dates[1], date_to
  end

  def test_date_time_offset_period_dates_3
    date = DateTime.new(2015,2,1)
    date_from = DateTime.new(2015,7,1)
    date_to = DateTime.new(2015,9,1).at_end_of_month
    dates = date.offset_period_dates(2,'quarterly')
    assert_equal dates[0], date_from
    assert_equal dates[1], date_to
  end

  def test_date_time_offset_period_dates_3
    date = DateTime.new(2015,2,1)
    date_from = DateTime.new(2016,1,1)
    date_to = DateTime.new(2016,6,1).at_end_of_month
    dates = date.offset_period_dates(2,'biannually')
    assert_equal dates[0], date_from
    assert_equal dates[1], date_to
  end

  # DATE TESTS - Monthly Period
  def test_date_time_last_period_dates
    date = Date.new(2015,4,3)
    date_from = date.prev_month.at_beginning_of_month
    date_to = date.prev_month.at_end_of_month
    dates = date.last_period_dates
    assert_equal dates[0], date_from
    assert_equal dates[1], date_to
  end

  def test_date_time_current_period_dates
    date = Date.new(2015,4,3)
    date_from = date.at_beginning_of_month
    date_to = date.at_end_of_month
    dates = date.current_period_dates
    assert_equal dates[0], date_from
    assert_equal dates[1], date_to
  end

  def test_date_time_next_period_dates
    date = Date.new(2015,4,3)
    date_from = date.next_month.at_beginning_of_month
    date_to = date.next_month.at_end_of_month
    dates = date.next_period_dates
    assert_equal dates[0], date_from
    assert_equal dates[1], date_to
  end

  def test_date_time_offset_period_dates
    date = Date.new(2015,4,3)
    date_from = date.at_beginning_of_month
    date_to = date.at_end_of_month
    dates = date.offset_period_dates
    assert_equal dates[0], date_from
    assert_equal dates[1], date_to
  end

  def test_date_time_offset_period_dates_2
    date = Date.new(2015,4,3)
    date_from = date.prev_month.at_beginning_of_month
    date_to = date.prev_month.at_end_of_month
    dates = date.offset_period_dates(-1)
    assert_equal dates[0], date_from
    assert_equal dates[1], date_to
  end

end