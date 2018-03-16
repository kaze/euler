# --------------------------------------------------------------------------- #
# A palindromic number reads the same both ways. The largest palindrome  made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
# --------------------------------------------------------------------------- #

def palindrome?(num)
  num.to_s == num.to_s.reverse
end

def largest_palindrome
  largest = -1
  three_digit_nums = (100..999).to_a
  combinations = three_digit_nums.combination(2).to_a
  combinations.each do |pair|
    num = pair[0] * pair[1]
    largest = num if palindrome?(num) and largest < num
  end
  largest
end

puts largest_palindrome
