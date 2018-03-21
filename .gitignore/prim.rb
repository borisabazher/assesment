require 'prime'
sum = 0
max_prime = 0
max_sum = 1_000_000

Prime.take_while {|p| p < max_sum }.each do |number|
  sum += number
  
  break if sum >= max_sum
  max_prime = sum if Prime.prime?(sum)
end

puts max_prime
