#********************************************
# Coded by: D.C Palumbo 
# Version 0.1
# Last Modied 1/23/2020
#********************************************
# The Problem:
# The real problem was getting a computer setup to code. All my work has always been on the companies PC.
# Given an array of integers, return the value in the array that appears the greatest number of times.
# For example: Given the array: [8, 100, 5, -100, 7, 2, 8, 9, 6, 9, 8]
# Bonus: If there are multiple values (i.e. two or more numbers that appear the same number of times) that are correct, return all correct values.
# test cases: 
# 1. handle a mixed set of different integers.
# 2. handle if all integers appear the same number of times example.
# 3. handle If there are multiple values (i.e. two or more numbers that appear the same number of times) that are correct, return all correct values.
# coding for test 1, 2 & 3 was the easy part, setup of my development environment on Windows took longer. I'm use to being on a linux box.   
# test sample array of integers

require 'rubygems'
require 'test-unit'


class TestEx < Test::Unit::TestCase
	def test_setup
	  # make the hash default to 0 so that += will work correctly
	  test_array = []
	  @test_hash = Hash.new(0)
        rescue
          puts "test_setup failed to execute."
	      puts "Fatal Error - this test will not continue."  
	      exit
	      else
	        puts "test_setup executed Successfully."
			@value = 0
	return @value		
end 

    def test_exercise
    # test exercise
    # iterate over the array, counting duplicate entries
    @test_array.each do |i|
	 @test_hash[i] += 1
	  @test_hash.each do |j, i|
    # puts "#{j} appears #{i} times" 	# used for debugging,
            	      end
                     end
    puts ""
    puts "Answer: If more than one integar is display below"
    puts "the integer repeated the same number of times."
    return @test_hash.each { |k, v| puts k if v == @test_hash.values.max }
      rescue	  
        puts "test_exercise - failed."
	    else
		  puts "test_exercise successert_equal not found errorfulful!"

end

@test_array1 = ARGV[0]
@test_array2 = ARGV[1]
# Normally I would load the test data using a YAML file. But I'm trying to keep this simple. 
  case @test_array1
	when "0"
	  @test_array = [8, 100, 5, -100, 7, 2, 8, 9, 6, 9, 8]   # test case example. (answer = 8)
	when "1"
      @test_array = [6, 8, 8, 6, 6, 2, 8, 3, 1] 			 # test two integers that repeat the same number of times. (answer 6,8)
	when "2"
	  @test_array = [1, 3, 1, 1, 1, 1, 5, 1, 1, 6]           # test when all integers repeat the same number of times. (answer 1)
    when "3"
      @test_array = [1, 1, 1, 2, 2, 2, 3, 3, 3, 6, 7, 8, 9]  # test when three integers repeat the same number of times. (answer 1,2,3)
    else
	  puts "Please Enter <WGSNTest2.rb> <test_option>"
	  puts "Usage Example: <WGSNTest2.rb 1>"
	  puts ""
	  puts "test case example."
	  puts "option 0 = [8, 100, 5, -100, 7, 2, 8, 9, 6, 9, 8]"
	  puts ""
	  puts "test two integers that repeat the same number of times."
	  puts "option 1 = [6, 8, 8, 6, 6, 2, 8, 3, 1]" 
	  puts ""
	  puts "option 2 = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]"
      puts "test when all integers repeat the same number of times."
	  puts ""
	  puts "option 3 = [1, 1, 1, 2, 2, 2, 3, 3, 3, 6, 7, 8, 9]"
      puts "test when three integers repeat the same number of times."
	  exit
  end
# the next step would be to add assertions for the tests.    
end