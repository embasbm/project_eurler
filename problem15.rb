require 'active_support/core_ext/enumerable'
require 'benchmark'
limit = 4

def routes(x,y,path)
	# print "\n(#{x},#{y})"
	if x==0
		y.downto(0) do |a|
			path << [0,a]
		end
	
	elsif y==0
		x.downto(0) do |a|
			path << [a,0]
		end
	else
		path << [x,y]
		return routes(x-1,y, path),routes(x,y-1,path)
	end
end

def factors(n)
 f = 2
 factors = []
 until n == 1 do
  if n%f == 0
   n = n / f
   factors << f
  else
   f += 1
  end
 end
 factors
end



(1..10).each do |a|
	routes_quants = []
	(1..10).each do |b|
		path_result = []
		routes(a,b,path_result)
		routes_quants[b]=path_result.count([0, 0])
	end
	puts "#{a}: #{factors(a)}"
	puts routes_quants.inspect
	(2..routes_quants.size-1).each do |i|
		div = routes_quants[i] / routes_quants[i-1]
		rest = routes_quants[i] % routes_quants[i-1]
	  	if div > 1
			print "#{i}: #{routes_quants[i]} == #{div} :: #{rest} *** #{factors(routes_quants[i])} ... #{routes_quants[i]/factors(routes_quants[i]).inject(:*)}\n"
		end
	end
	puts "\n"
end


# puts "\n"

# path_result = []
# routes(limit,limit,path_result)
# print "\n[#{limit} : #{limit}] -- #{path_result.count([0, 0])} "
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




# emba_solution = Benchmark.realtime do
# 	paths = routes_quants(20,20)
# end
# print "\nRoutes :\n#{paths}\n\n"
# print "\nTime to get this[maths]: #{emba_solution}\n"

