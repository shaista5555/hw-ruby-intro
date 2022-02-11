# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr = arr.sort
  len = arr.length()
  if len==0
    return 0
  elsif len == 1 and arr[0]==arr[1]
    return arr[0]
  end
  return arr.last(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  (0..arr.length()-1).each do |i|
    j=i+1
    (j..arr.length()-1).each do |j|
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, "
  return str.concat(name)
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if(s.length()==0)
    return false
  end
  return s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "0"
    return true
  end
  if /^[01]*00$/.match(s)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price
def initialize isbn, price
  raise ArgumentError if isbn.empty? || price <= 0
  @isbn = isbn
  @price = price
end

def price_as_string
  format("$%.2f", @price)
end
end
