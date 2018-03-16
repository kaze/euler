# --------------------------------------------------------------------------- #
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.
# --------------------------------------------------------------------------- #
primes = []

def prime?(num)
  return false if num <= 1
  (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
end

(0..2000000).each do |num|
  primes << num if prime?(num)
end

puts primes.reduce(:+)
