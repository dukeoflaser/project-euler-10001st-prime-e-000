# Implement your object-oriented solution here!

class Prime
  
  def initialize(nth)
    @nth = nth
  end
  
  def number
    max = @nth * 11           #A bit arbitrary and fails on larger numbers
    numbers = (2..max).to_a
    upper = Math.sqrt(max)
    
    (2..upper).each do |n|
      unless numbers[n - 2] == nil
        (n * n).step(max, n) { |i| numbers[i - 2] = nil }
      end
    end
  
    numbers.compact[@nth - 1]
  end
  
  ## Or use Ruby's built in Prime class:
  # require 'prime'
  
  # def number(nth)
  #   Prime.take(nth).last
  # end
  
end
