require 'active_support/core_ext/enumerable'
require 'benchmark'



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


puts factors(600851475143).max

