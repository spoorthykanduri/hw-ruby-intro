# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  add=0
  for i in 0...arr.length
    add=add+arr[i]
  end
  return add

end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length==0
    add=0
  elsif arr.length==1
    add=arr[0]
  else 
    arr.sort!
    add=arr[(arr.length)-1]+arr[(arr.length)-2]
  end
  return add
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length<=1
    return false
  else
   !!arr.uniq.combination(2).detect { |a, b| a + b == n }
  end
end
# Part 2

def hello(name)
  # YOUR CODE HERE
  result="Hello, " + name
  return result
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /^[^aeiou\W]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length >=3
   s =~ /^[01]*(00)$/
  elsif s=="0"
   return true
  else
   return false
  end
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
 def initialize(isbn, price)
  @isbn = isbn
  @price = price
  if isbn == ""
      raise ArgumentError, "empty isbn"
  end
  if price<=0
      raise ArgumentError, "error price"
  end
 end
 

 attr_accessor :isbn, :price
#  attr_writer :isbn, :price
 
 def price_as_string()
  pricestr = "$" + "%.2f" % @price
  return pricestr
 end 
  
end

