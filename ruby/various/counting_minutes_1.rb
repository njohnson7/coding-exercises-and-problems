# counting_minutes_1.rb

# Using the Ruby language, have the function CountingMinutesI(str) take the str
# parameter being passed which will be two times (each properly formatted with a
# colon and am or pm) separated by a hyphen and return the total number of
# minutes between the two times. The time will be in a 12 hour clock format. For
# example: if str is 9:00am-10:00am then the output should be 60. If str is
# 1:00pm-11:00am the output should be 1320.

def counting_minutes(str)
  times = str.split('-')
  time1, time2 = convert_to_time(times.first), convert_to_time(times.last)
  mins_difference = ((time1 - time2) / 60).round
  (1440 - mins_difference) % 1440
end

def convert_to_time(str)
  hours, mins = str.split(':')
  hours = hours.to_i % 12
  hours += 12 if mins.include?('p')
  Time.new(2000, 1, 1, hours, mins.to_i)
end

p counting_minutes("9:00am-10:00am") # 60
p counting_minutes("1:00pm-11:00am") # 1320
p counting_minutes("12:30pm-12:00am") # 690
p counting_minutes("1:23am-1:08am") # 1425
p counting_minutes("2:00pm-3:00pm")
p counting_minutes("11:00am-2:10pm")
p counting_minutes("12:31pm-12:34pm")
p counting_minutes("5:00pm-5:11pm")
