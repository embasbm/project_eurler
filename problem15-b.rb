require 'active_support/core_ext/enumerable'
require 'benchmark'
limit = 20

path_result=0
(limit..limit).each do |a|
	(limit..limit).each do |b|
		if a==limit && a==b
			total_paths = 1
			emba_solution = Benchmark.realtime do
				for i in 0..a-1
					total_paths *= ((2 * b) - i);
					total_paths /= (i + 1);
				end
			end
			puts "\nGrid: [#{a}X#{b}] - Routes: #{total_paths} - Time spent: #{emba_solution}"
		end
	end
end

