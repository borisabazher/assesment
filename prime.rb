require 'prime'
class Foo
  MAX_SUM = 1_000_000

  class << self

    def calculate_sum
      sum = 0
      max_prime = 0

      Prime.take_while {|p| p < MAX_SUM }.each do |number|
        sum += number
        
        break if sum >= MAX_SUM
        max_prime = sum if Prime.prime?(sum)
      end
      
      max_prime
    end  
    
  end
  
end

puts Foo.calculate_sum
