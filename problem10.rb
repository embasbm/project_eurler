require 'active_support/core_ext/enumerable'
require 'benchmark'
require 'mathn'
limit=2_000_000


def factors(n)
 sum = 0
 Prime.each(n) do |prime|
 	sum += prime
 end
 sum
end

emba_solution = Benchmark.realtime do
	print "\n\nThe sum of all the primes below two million:\t" + factors(limit).to_s + "\n\n"
end
print "\nTime to get this[maths]: #{emba_solution}\n"



