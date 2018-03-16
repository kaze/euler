# --------------------------------------------------------------------------- #
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
#
# What is the 10 001st prime number?
# --------------------------------------------------------------------------- #

primes = []
current = 3

def prime?(num)
  return false if num <= 1
  (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
end

while primes.length < 10000
  primes << current if prime?(current)
  current += 2
end

puts primes.last
