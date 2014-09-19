require 'active_support/core_ext/enumerable'
require 'benchmark'

multipl_3_5 = lambda {|x| x%3==0 || x%5==0 }

time_1000 = Benchmark.realtime do
 numbers = 1000.times.select(&multipl_3_5).sum
end

time_1000_1000 = Benchmark.realtime do
 numbers = 1000_1000.times.select(&multipl_3_5).sum
end

puts "for 1000 it takes #{time_1000}"
puts "for 1000,000 it takes #{time_1000_1000}"