require_relative("../lib/fizzbuzz.rb")


RSpec.describe FizzBuzzer do
	
	describe "add method"  do

	it "returns 1 if the number is 1"  do
       divider = FizzBuzzer.new
       expect(divider.fizzbuzz(1)).to eq(1)  
    end
    it "returns Fizz if the number is 3"  do
       divider = FizzBuzzer.new
       expect(divider.fizzbuzz(3)).to eq("Fizz")  
    end
    it "returns Buzz if the number is 5"  do
       divider = FizzBuzzer.new
       expect(divider.fizzbuzz(5)).to eq("Buzz")  
    end
    it "returns FizzBuzz if the number is % by 3 and 5"  do
       divider = FizzBuzzer.new
       expect(divider.fizzbuzz(15)).to eq("FizzBuzz")  
    end
    it "returns FizzBuzz if the number is % by 3 and 5"  do
       divider = FizzBuzzer.new
       expect(divider.fizzbuzz(30)).to eq("FizzBuzz")  
    end
 end
end