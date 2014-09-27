require 'active_support/core_ext/enumerable'
require 'benchmark'
limit = 10_001

# This is the method I did by myself, just bruteforce
def is_prime?(n)
	2.upto(n-1) do |x| 
		return false if n % x == 0
	end
	true
end

# This is the method I did after I read the PDF from Eurler solutions
def quick_is_prime?(n)
	if n < 4
		true
	elsif n % 2 == 0
		false
	elsif n < 9
		true
	elsif n % 3 == 0 
		false
	else
 		r = Math.sqrt(n).floor
		f = 5
 		while f <= r
 			return false if n % f == 0 || n % (f+2) == 0
 			f+=6
 		end 
		true
	end

end

def give_me_n_prime_emba(n)
	primes = []
	iterator = 1
	while primes.size < n+1
		primes << iterator if is_prime?(iterator)
		iterator += 1
	end
	primes[n]
end

def give_me_n_prime_euler(n)
	primes = []
	iterator = 1
	while primes.size < n+1
		primes << iterator if quick_is_prime?(iterator)
		iterator += 1
	end
	primes[n]
end

emba_solution = Benchmark.realtime do
	puts give_me_n_prime_emba(limit)
end
print "\nTime to get this[Emba]: #{emba_solution}\n"

euler_solution = Benchmark.realtime do
	puts give_me_n_prime_euler(limit)
end
print "\nTime to get this[Euler]: #{euler_solution}\n"
