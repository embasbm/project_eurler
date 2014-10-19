require 'active_support/core_ext/enumerable'
require 'benchmark'
limit = 10000

class Integer

  def proper_divisors()
    1.upto(Math.sqrt(self)).select {|i| (self % i).zero?}.inject([]) do |f, i|
      f << i
      f << self/i unless i == self/i
      f
    end.sort - [self]
  end

  def sum_proper_divisors()
    self.proper_divisors.sum
  end

end

def sum_amicable_numbers(limit)
  (1..limit).select { |x|
  amicable = x.sum_proper_divisors
  amicable.sum_proper_divisors == x && x != amicable
  }.uniq.sum
end

emba_solution = Benchmark.realtime do
  print "\nThe sum of all the amicable numbers under #{limit}: #{sum_amicable_numbers(limit)}"
end
print "\nTime to get this[maths]: #{emba_solution}\n"

