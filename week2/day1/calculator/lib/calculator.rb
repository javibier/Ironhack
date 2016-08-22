class StringCalculator

	
	def add(number_array = "")
      # number_array = string.split(",")
      first_number = number_array[0].to_i
      second_number = number_array[2].to_i
      third_number = number_array[4].to_i
      fourth_number = number_array[6].to_i
      # if number_array.count == 1
      	first_number
      # elsif number_array.count == 3
      	first_number + second_number
      # elsif number_array.count == 5
      	first_number + second_number + third_number
      # elsif number_array.count == 7
        first_number + second_number + third_number + fourth_number		 			
      # else
      #   0
      # end
    end

end