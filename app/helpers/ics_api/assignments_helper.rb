module AssignmentsHelper
  # helper to convert the datetime format into an iCalendar file compatible version
  def calendar_time(time)
      # this function strftime gets the new datetimeformation as a parameter.
    time.strftime("%Y%m%dT%H%M%SZ")
  end
end