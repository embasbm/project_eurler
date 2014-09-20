require 'active_support/core_ext/enumerable'
require 'benchmark'

multipl_3_5 = lambda {|x| x%3==0 || x%5==0 }
problem_solution = 1000.times.select(&multipl_3_5).sum
puts problem_solution
