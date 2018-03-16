# --------------------------------------------------------------------------- #
# The following iterative sequence is defined for the set of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#
# It can be seen that this sequence (starting at 13 and finishing at 1) contains
# 10 terms. Although it has not been proved yet (Collatz Problem), it is thought
# that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.
# --------------------------------------------------------------------------- #

def next_from_even(num)
  num / 2
end

def next_from_odd(num)
  3 * num + 1
end

def next_num(num)
  return nil if num <= 1
  num.even? ? next_from_even(num) : next_from_odd(num)
end

chains = {}

(0..999999).each do |num|
  chains[num] = 0
  next_item = num
  until next_item.nil?
    chains[num] += 1
    next_item = next_num(next_item)
  end
end

longest = chains.sort_by { |num, chain_count| chain_count }.last

puts "number: #{longest[0]}, chain length: #{longest[1]}"

