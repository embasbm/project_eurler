require 'active_support/core_ext/enumerable'
require 'benchmark'
limit = 28123
class Integer

  def proper_divisors()
    1.upto(Math.sqrt(self)).select {|i| (self % i).zero?}.inject([]) do |f, i|
      f << i
      f << self/i unless i == self/i
      f
    end.sort - [self]
  end

end



emba_solution = Benchmark.realtime do
  abundants = []
  (0..limit).each do |x|
    abundants << x if x < x.proper_divisors.sum
  end
  print "\nAbundants: #{abundants.count}"

  sums_of_abundants = []
  abundants.each {|abundant| abundants.each {|each_abundant| sums_of_abundants << abundant + each_abundant }}
  sums_of_abundants.uniq!
  print "\nSums of Abundants: #{sums_of_abundants.count}"

  non_abundants_sums = (1..limit).to_a - sums_of_abundants
  print "\nNon Abundant sums: #{non_abundants_sums.count}"
  print "\nSum of Non Abundant sums: #{non_abundants_sums.sum}"

end
print "\nTime to get this[maths]: #{emba_solution}\n"
