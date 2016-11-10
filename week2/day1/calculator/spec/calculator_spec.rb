require_relative("../lib/calculator.rb")


RSpec.describe StringCalculator do
	
	describe "add method"  do

	it "returns the addition of 2 numbers in a string" do
      # Setup
      the_calculator = StringCalculator.new

        #   p the_calculator.add("7,7")    ==    14
      expect( the_calculator.add("7,7") ).to eq( 14 )

        #   p the_calculator.add("8,4")    ==    12
      expect( the_calculator.add("8,4") ).to eq( 12 )
    end
  it "returns the addition of 1 number in a string" do
      the_calculator = StringCalculator.new
      expect( the_calculator.add("6")).to eq(6)
      expect( the_calculator.add("3")).to eq(3)
	  end
  it "returns the addition of 0 numbers in a string" do
      the_calculator = StringCalculator.new
      expect( the_calculator.add("")).to eq(0)
    end
  it "returns the addition of 0 numbers in a string" do
      the_calculator = StringCalculator.new
      expect( the_calculator.add("")).to eq(0)
    end
	end
end