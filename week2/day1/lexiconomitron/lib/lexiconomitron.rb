class Lexiconomitron

	def eat_t(input_string)
       input_string.gsub(/[tT]/,"")
	end

	def shazam(array)
		return_array=[]
		return_array[0] = eat_t(array[0].reverse!)
		return_array.push(eat_t(array[array.length - 1].reverse!))
	end

	def oompa_loompa(array)
		return_array=[]
		array.each { |word| return_array.push(eat_t(word)) if word.length <= 3}
		return_array
	end
end
