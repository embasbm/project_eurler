require 'active_support/core_ext/enumerable'
require 'benchmark'
limit = 1_000_000

@emba_solution = Benchmark.realtime do
  my_array=[0,1,2,3,4,5,6,7,8,9]
  permutations = my_array.permutation.to_a
  print "\nMillionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9: #{permutations[limit-1].join}"
end
print "\nTime to get this[Hole Problem]: #{@emba_solution}\n"

