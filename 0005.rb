# --------------------------------------------------------------------------- #
# 2520 is the smallest number that can be divided by each of the numbers from
# 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?
# --------------------------------------------------------------------------- #

i = 20

def divisible_by_all?(num)
  (1..20).each do |divisor|
    return false if num % divisor != 0
  end
  true
end

while true do
  if divisible_by_all?(i)
    puts i
    break
  end
  i += 20
end
