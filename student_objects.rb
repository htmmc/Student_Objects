require 'pry'

class Student
  attr_accessor :scores, :first_name, :ssn
  def initialize(options)
   @first_name = options[:first_name] if options[:first_name]
   @scores = options[:scores] if options[:scores]
   @ssn = options[:ssn] if options[:ssn]
  end 
 
  def average 
  	total_score = self.scores.reduce(0){|sum, score| sum + score}
  	total_tests = self.scores.length
  	average = total_score/total_tests
  end 
  def letter_grade
  	if average >=90 
  		puts "A"
  	elsif average >=80
  		puts "B"
  	elsif average >=70
  		puts "C"
  	elsif average >=60
  		puts "D"
  	elsif average < 60
  		puts "F"
  	else "N/A"
  	end 
  end
  def <=> other
    self.ssn <=> other.ssn
  end
  def to_s
    self.ssn
  end     
 end 

students = [] 
students << Student.new({:first_name => "Alex", :scores => [100,100,100,0,100], :ssn =>"000-00-0000"})
students << Student.new({:first_name => "Julia", :scores => [90,100,90,80,95], :ssn => "111-11-1111"})
students << Student.new({:first_name => "Emily", :scores => [80,100,80,90,100], :ssn =>"111-12-2211"})
students << Student.new({:first_name => "Jose", :scores => [100,100,60,70,90],:ssn =>"000-02-0002"})
students << Student.new({:first_name => "Erika", :scores => [50,60,70,80,100],:ssn =>"000-00-1221"})

puts students[0].first_name 
puts students[0].scores.length
puts students[0].scores[0]
puts students[0].scores[3]
puts students[0].average 
puts students[0].letter_grade 
puts students[0].ssn


def linear_search(array, name)
    (array.map {|student| student.first_name}).include?(name) 
end 

puts linear_search(students, "Alex")
puts linear_search(students, "Emlily")
puts linear_search(students, "Jose")
puts linear_search(students, "NOT A STUDENT") 

def binary_search(array, ssn)
	  array.map {|student| student.ssn}.include?(ssn) 
end 

puts binary_search(students, "111-11-1111")
puts binary_search(students, "000-00-0000")

puts students[0].ssn < students[1].ssn
puts students.sort