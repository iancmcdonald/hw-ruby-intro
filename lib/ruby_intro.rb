# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce 0, :+
end

def max_2_sum arr
  arr.max(2).reduce(0, :+)
end

def sum_to_n? arr, n
  arr.combination(2).any? { |elem| elem.reduce(0, :+) == n }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[^aeiou]/i === s && !(/.*\W.*/ === s)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s == '0' || /^[01]*100+$/ === s
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    (isbn == '' || price <= 0) && raise(ArgumentError)
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    dollars, cents = price.to_s.split('.')
    if cents
      cents << '0' until cents.length == 2
    else
      cents = '00'
    end
    "$#{dollars}.#{cents}"
  end
end
