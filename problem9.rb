require 'active_support/core_ext/enumerable'
require 'benchmark'

def pitagorean_finder
	2.upto(1000) do |a|
		2.upto(1000) do |b|
			return [a,b,1000-b-a] if a**2 + b**2 == (1000-b-a)**2
		end
	end
end



emba_solution = Benchmark.realtime do
	print "\nThe product of abc :\n#{pitagorean_finder.inspect} : #{pitagorean_finder.inject(:*)}\n\n"
end
print "\nTime to get this[maths]: #{emba_solution}\n"
