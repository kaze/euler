# --------------------------------------------------------------------------- #
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
# --------------------------------------------------------------------------- #

def sum_of_multiples(upper_limit)
  sum = 0
  (0...upper_limit).each do |num|
    if num % 3 == 0 or num % 5 == 0
      sum += num
    end
  end
  puts sum
end

sum_of_multiples(1000)
