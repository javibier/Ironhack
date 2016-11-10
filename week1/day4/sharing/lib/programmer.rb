class Programmer
  include Payable

  def program
	  consume_coffee
	  writes_code
  end

  def consume_coffee
	  puts "Drinks Starbucks every day"
  end

  def writes_code
    puts "Writes code on a daily v=basis for fun"
  end   
end
