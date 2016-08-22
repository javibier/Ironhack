class FizzBuzzer

def fizzbuzz(a)
# 1.upto(100) do |a|
if a % 3 == 0 and a % 5 == 0
   "FizzBuzz"
elsif a % 5 == 0
   "Buzz"
elsif a % 3 == 0
   "Fizz"
else
   a
end

end
end