# counting_minutes.rb

# Using the Ruby language, have the function CountingMinutes(str) take the str
# parameter being passed which will be two times (each properly formatted with a
# colon and am or pm) separated by a hyphen and return the total number of
# minutes between the two times. The time will be in a 12 hour clock format. For
# example: if str is 9:00am-10:00am then the output should be 60. If str is
# 1:00pm-11:00am the output should be 1320.

def counting_minutes(str)
  time1, time2 = str.split('-')
  mins1, mins2 = time_to_minutes(time1), time_to_minutes(time2)
  difference = mins2 - mins1
  if difference.negative?
    difference += 1440
  end
  difference
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

p counting_minutes('9:00am-10:00am') # 60
p counting_minutes('1:00pm-11:00am') # 1320
p counting_minutes("12:30pm-12:00am") # 690
p counting_minutes("1:23am-1:08am") # 1425
