require 'ruby-dictionary'

class WordChain
	def initialize(dictionary)
		@dictionary = dictionary
	end

	def find_chain
	  if first_word ()
	end

	def self.check_words( start, finish)
	   words_array = []
	   f = File.open(dictionary)
	   f.each_line do |line|
	   words_array << line.chomp
	end
       f.close
    if words_array.any? { |x| x.include? start } == false or
       words_array.any? { |x| x.include? finish } == false or
       start == "" or finish == ""
    	     return false
    else
    	     return true
    end
end




put ""
put ""

	
my_chain.find_chain("userinput", "userinput")

dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary)

