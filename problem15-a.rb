require 'active_support/core_ext/enumerable'
require 'benchmark'
limit = 20

def routes(x,y)

	
	
	if x==0
		
		return 1

	elsif y==0
		return 1
	else
		print "\n(#{x},#{y})" if x == y and x % 2 ==0 and x > 15
		return routes(x-1,y) + routes(x,y-1)
	end
end

path_result=0
(1..10).each do |a|
	(1..20).each do |b|
		if a==b
			path_result = routes(a,b)
			print "\n[#{a} : #{b}] -- #{path_result}"
		end
	end
	puts "\n"
end

# puts "\n"

# path_result = []
# routes(limit,limit,path_result)
# puts path_result.inspect
# print "\nR ( #{limit} : #{limit} ) -- #{path_result.count([0, 0])} "
# puts "\n"
# puts "\n"
# puts "\n"
# temp = []
# routes = []
# path_result.each do |a|
# 	temp << a
# 	if a == [0, 0]
# 		routes << temp
# 		temp = []
# 	end
# end

# routes.sort_by {|x| x.size }.reverse.each do |p|
# 	puts p.inspect
# end


# (20..20).each do |a|
# 	paths = 0
# 	emba_solution = Benchmark.realtime do
# 		paths = routes(a,a)
# 	end
# 	print "\nRoutes for #{a}: #{paths}\tTime to get this: #{emba_solution}"
# end

