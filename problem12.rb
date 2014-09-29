require 'active_support/core_ext/enumerable'
require 'benchmark'
limit = 500

def t_num_divs(limit)
	iterator = 1

	# to get the n triangle number
	triangle = iterator * ( iterator + 1 ) / 2
	
	while get_num_divisors(triangle) < limit
		print "#{triangle} "
		iterator +=1	
		triangle = iterator * ( iterator + 1 ) / 2
	end
	triangle
end

# prime facorization of n
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


# n = p_1**(v1) * p_2**(v2) * p_3**(v3) => p are factors of n 
# => divisors of n : d(n) = ( v1 + 1 ) * ( v1 + 2 ) * ( v1 + 3 ) 
def get_num_divisors(n)
	divisors = 1
	exps = factors(n).group_by {|x| x}
	exps.each {|k,v| divisors *= (v.size+1)}
	divisors
end

emba_solution = Benchmark.realtime do
	print "\nThe first triangle number to have over #{limit} divisors :\n#{t_num_divs(limit)}\n\n"
end
print "\nTime to get this[maths]: #{emba_solution}\n"
