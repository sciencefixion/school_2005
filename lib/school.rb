class School
  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []

  end

  def add_student_name(student_name)
    @student_names << student_name
  end

  def end_time
  end_hour = @hours_in_school_day + @start_time.to_i
  end_time24 = end_hour.to_s + ":00"
  end

  def is_full_time?

    if @hours_in_school_day >= 4
      true
    else
      false
    end

  end

  def standard_student_names
    @student_names.each do |name|
      name.capitalize!
    end
  end

  def convert_end_time_to_clock_time
    end_hour = @hours_in_school_day + @start_time.to_i
    if end_hour >= 13
      end_hour -= 12
      end_hour.to_s + ":00"
    else
      end_hour.to_s + ":00"
    end
  end

end
