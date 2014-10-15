require 'active_support/core_ext/enumerable'
require 'benchmark'
limit = 1000

def is_thousand?(x)
	if x / 1000 >= 1 && x % 1000 > 0 
		return write(x / 1000).to_s + "thousandand" + is_hundred?(x % 1000).to_s
	elsif x / 1000 >= 1 && x % 1000 == 0			
		return write(x / 1000).to_s + "thousand" + is_hundred?(x % 1000).to_s
	else
		return is_hundred?(x)
	end
end

def is_hundred?(x)
	if x / 100 >= 1 && x % 100 > 0
		return write(x / 100).to_s + "hundredand" + twentish?(x % 100).to_s
	elsif x / 100 >= 1 && x % 100 == 0		
		return write(x / 100).to_s + "hundred" + twentish?(x % 100).to_s
	else
		return twentish?(x)
	end
end

def twentish?(x)
	if x / 20 >= 1
		return "twenty" + write(x%10).to_s if x%20 < 10 && x/20 <=1
		return "thirty" + write(x%10).to_s if x%20 >= 10 && x%20 < 20 && x/20 <=1
		return "forty" + write(x%10).to_s if x%20 < 10 && x/20 <=2
		return "fifty" + write(x%10).to_s if x%20 >= 10 && x%20 < 20 && x/20 <=2
		return "sixty" + write(x%10).to_s if x%20 < 10 && x/20 <=3
		return "seventy" + write(x%10).to_s if x%20 >= 10 && x%20 < 20 && x/20 <=3
		return "eighty" + write(x%10).to_s if x%20 < 10 && x/20 <=4
		return "ninety" + write(x%10).to_s if x%20 >= 10 && x%20 < 20 && x/20 <=4
	else
		return write(x)
	end
end

def write(x)
	return "one" if x == 1  
	return "two" if x == 2  
	return "three" if x == 3  
	return "four" if x == 4  
	return "five" if x == 5  
	return "six" if x == 6  
	return "seven" if x == 7  
	return "eight" if x == 8  
	return "nine" if x == 9  
	return "ten" if x == 10  
	return "eleven" if x == 11  
	return "twelve" if x == 12  
	return "thirteen" if x == 13  
	return "fourteen" if x == 14  
	return "fifteen" if x == 15  
	return "sixteen" if x == 16  
	return "seventeen" if x == 17  
	return "eighteen" if x == 18  
	return "nineteen" if x == 19  
end

chars=0
emba_solution = Benchmark.realtime do
	(1..limit).each do |s|
		chars += "#{is_thousand?(s)}".size
	end
end
print "\nLetters used: #{chars}"
print "\nTime to get this[maths]: #{emba_solution}\n"