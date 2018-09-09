# most_free_time.rb

# Using the Ruby language, have the function MostFreeTime(strArr) read the
# strArr parameter being passed which will represent a full day and will be
# filled with events that span from time X to time Y in the day. The format of
# each event will be hh:mmAM/PM-hh:mmAM/PM. For example, strArr may be
# ["10:00AM-12:30PM","02:00PM-02:45PM","09:10AM-09:50AM"]. Your program will
# have to output the longest amount of free time available between the start of
# your first event and the end of your last event in the format: hh:mm. The
# start event should be the earliest event in the day and the latest event
# should be the latest event in the day. The output for the previous input would
# therefore be 01:30 (with the earliest event in the day starting at 09:10AM and
# the latest event ending at 02:45PM). The input will contain at least 3 events
# and the events may be out of order.

def most_free_time(arr)
  free_times = []
  arr = arr.map do |event|
    start_time, end_time = event.split('-')
    [time_to_minutes(start_time), time_to_minutes(end_time)]
  end.sort
  1.upto(arr.size - 1) do |idx|
    free_times << arr[idx].first - arr[idx -1].last
  end
  most = free_times.max
  hours, mins = most.divmod(60)
  "#{format('%02d', hours)}:#{format('%02d', mins)}"
end

def time_to_minutes(time) # '12:15PM' format
  hours, mins = time.split(':').map(&:to_i)
  if time.downcase =~ /pm/
    time =~ /12/ ? hours = 12 : hours += 12
  else
    hours = 0 if time =~ /12/
  end
  hours * 60 + mins
end


p most_free_time(["10:00AM-12:30PM","02:00PM-02:45PM","09:10AM-09:50AM"])
  # 01:30
p most_free_time(["12:15PM-02:00PM","09:00AM-10:00AM","10:30AM-12:00PM"])
  # "00:30"
p most_free_time(["12:15PM-02:00PM","09:00AM-12:11PM","02:02PM-04:00PM"])
  # "00:04"
