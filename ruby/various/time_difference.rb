# time_difference.rb

# Using the Ruby language, have the function TimeDifference(strArr) read the
# array of strings stored in strArr which will be an unsorted list of times in a
# twelve-hour format like so: HH:MM(am/pm). Your goal is to determine the
# smallest difference in minutes between two of the times in the list. For
# example: if strArr is ["2:10pm", "1:30pm", "10:30am", "4:42pm"] then your
# program should return 40 because the smallest difference is between 1:30pm and
# 2:10pm with a difference of 40 minutes. The input array will always contain at
# least two elements and all of the elements will be in the correct format and
# unique.

def time_difference(arr)
  times = []
  differences = []
  arr.each do |time|
    hours = time.match(/^\d+:/).to_s.to_i
    minutes = time.match(/:(\d+)/)[1].to_i
    hours += 12 if time.include?('pm')
    if hours == 12
      if time.include?('pm')
        hours = 12
      else
        hours = 0
      end
    end
    times << (hours * 60 + minutes)
  end
  differences = times.combination(2).map { |set| (set.first - set.last).abs }
  differences.map! do |difference|
    if difference > 720
      1440 - difference
    else
      difference
    end
  end
  differences.min
end

p time_difference(["2:10pm", "1:30pm", "10:30am", "4:42pm"]) # 40
p time_difference(["1:10pm", "4:40am", "5:00pm"]) # 230
p time_difference(["10:00am", "11:45pm", "5:00am", "12:01am"]) # 16
