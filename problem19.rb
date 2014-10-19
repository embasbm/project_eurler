require 'active_support/core_ext/enumerable'
require 'benchmark'

def count_sundays_on_first_of_moths
  total_sundays = 0
  (1901..2000).each do |year|
    century_number = 6 - ((year.to_s[0,2]).to_i % 4)*2
    (1..12).each do |month|
      start_on_sunday = ((1 + month + year + ( year / 4) + century_number) % 7) == 0 ? true : false
      if start_on_sunday
        total_sundays += 1
      end
    end
  end
  total_sundays
end

emba_solution = Benchmark.realtime do
  puts ''
  print "Sundays fell on the first of the month during the twentieth century: #{count_sundays_on_first_of_moths}"
  puts ''
end
print "\nTime to get this[maths]: #{emba_solution}\n"

