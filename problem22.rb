require 'active_support/core_ext/enumerable'
require 'benchmark'

@alphabet = []
("A".."Z").each {|character| @alphabet << character }

file = File.open("p022_names.txt", "r")
contents = file.read
my_array_of_names = contents.split(',')
my_array_of_names.sort!

def get_name_score(name)
  total_score = 0
  name.each_char do |character|
    total_score+=(@alphabet.index(character)+1)
  end
  total_score
end

def sum_all_name_scores(my_array_of_names)
  sum_name_scores = 0
  my_array_of_names.each do |name|
    sum_name_scores += (my_array_of_names.index(name)+1) * get_name_score(name)
  end
  sum_name_scores
end

emba_solution = Benchmark.realtime do
  print "\nThe total of all the name scores in the file: #{sum_all_name_scores(my_array_of_names)}"
end
print "\nTime to get this[maths]: #{emba_solution}\n"
