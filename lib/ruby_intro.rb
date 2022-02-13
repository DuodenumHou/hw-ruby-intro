# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  arr.each{|i| result+=i}
  result
end

def max_2_sum arr
  result = 0
  arr.sort! {|a,b| b <=> a}
  if arr.length()==1
    result = arr[0]
  elsif arr.length() > 1
    result = arr[0] + arr[1]
  end
  result
end

def sum_to_n? arr, n
  map = {}
  arr.each{ |i| 
    minus = n - i
    if map.key?(minus)
      return true
    else
      map.store(i,i)
    end
  }
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.length() == 0
    return false
  end

  regex=/[^a-zA-Z]/ 
  regex.match(s[0])
  if regex.match(s[0]) != nil
    return false
  end

  map = {"a" => "a", "e" => "e", "i" => "i", "o" => "o", "u" => "u", "A" => "A", "E" => "E", "I" => "I", "O" => "O", "U" => "U"}
  print map.key?(s[0])
  if map.key?(s[0])
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if s.length() == 0
    return false
  end
  regex=/[^0*1*\s*]/
  print regex.match(s)
  if regex.match(s) != nil
    return false
  end
  val = s.to_i
  if val%4 != 0
    return false
  end
  return true
end

# Part 3

class BookInStock
  attr_accessor :price, :isbn

  def initialize (isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    if isbn != '' || isbn != nil
      @isbn = isbn
    end
    if price > 0
      @price = price.to_f
    end
  end

  def price_as_string
    return format("$%.2f", @price)
  end
end
