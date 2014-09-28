require 'active_support/core_ext/enumerable'
require 'benchmark'
limit = 1_000_000

def longest_chain_under_n(limit)
	max_length = Hash.new(0)
	max_length[:number] = 0
	max_length[:size] = 0
	
	1.upto(limit) do |x|
		chain_length = 1
		chain_length = iterate(x,chain_length)
		if chain_length > max_length[:size]
			max_length[:size] = chain_length
			max_length[:number] = x
		end
	end

	max_length

end

def iterate(n,sequence)

	return sequence 	if n == 1
	
	return iterate(n / 2, sequence+1) if n.even?

	return iterate(3 * n + 1, sequence+1) if n.odd?
	
end

emba_solution = Benchmark.realtime do
	print "\nLongest Collatz sequence :\n#{longest_chain_under_n(limit)}\n\n"
end
print "\nTime to get this[maths]: #{emba_solution}\n"


