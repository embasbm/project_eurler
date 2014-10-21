require 'active_support/core_ext/enumerable'
require 'benchmark'
limit = 1_000



@emba_solution = Benchmark.realtime do
  num_1 = 0
  num_2 = 1
  iteration=1
  while num_2.to_s.size < limit
    num_2 += num_1
    num_1 = num_2 - num_1
    iteration += 1
  end
  print "\nThe first term in the Fibonacci sequence to contain #{limit} digits: #{iteration}"
end
print "\nTime to get this[Hole Problem]: #{@emba_solution}\n"

