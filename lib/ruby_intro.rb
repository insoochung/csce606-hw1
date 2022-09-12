# frozen_string_literal: true

# Part 1

def sum(arr)
  return arr.sum
end

def max_2_sum(arr)
  return arr.max(2).sum
end

def sum_to_n?(arr, number)
  for perm in arr.permutation(2)
    return true if perm.sum == number
  end
  return false
end

# Part 2

def hello(name)
  return 'Hello, ' + name
end

def starts_with_consonant?(string)
  return false if string.length == 0 or !string[0].match?(/[[:alpha:]]/)
  return !['a', 'e', 'i', 'o', 'u'].include?(string[0].downcase)
end

def binary_multiple_of_4?(string)
  return false if !string.match(/\A(0|1)+\Z/)
  return string.to_i(2) % 4 == 0
end

# Part 3

# Object representing a book
class BookInStock
  def initialize(isbn, price)
    raise ArgumentError.new 'Invalid ISBN (empty string)' if isbn == ''
    raise ArgumentError.new 'Invalid price (0 or smaller value)' if price <= 0

    @isbn = isbn
    @price = price
  end

  def isbn
    return @isbn
  end

  def price
    return @price
  end

  def isbn=(isbn)
    return @isbn = isbn
  end

  def price=(price)
    return @price = price
  end

  def price_as_string
    return "$%0.2f" % @price
  end
end
