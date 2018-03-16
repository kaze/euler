# --------------------------------------------------------------------------- #
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
# --------------------------------------------------------------------------- #

def largest_prime_factor_of(num)
  max = num
  test = 3
  best = 1

  while (max >= test) do
    if max % test == 0
      best = test
      max = max / test
    else
      test += 2
    end
  end
  best
end

puts largest_prime_factor_of(600851475143)
