class Designer
  include CoffeeConsumer
  include Pay_Salary

  def design
    consume_coffee
	  select_typograph
	  select_colors
  end

  def consume_coffee
	  puts "Drinks Starbucks every day"
  end

  def select_typograph
	  puts "Designers love Caligraphy"
  end

  def select_colors
    puts "Designers love to mix colors into their designs"
  end
end