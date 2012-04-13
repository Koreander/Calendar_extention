module AssignmentsHelper
  def calendar_time(time)
    time.strftime("%Y%m%dT%H%M%SZ")
  end
end