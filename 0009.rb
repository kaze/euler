# --------------------------------------------------------------------------- #
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a**2 + b**2 = c**2
#
# For example, 3**2 + 4**2 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
# --------------------------------------------------------------------------- #

triplets = (0..1000).to_a.combination(3).to_a

triplets.each do |a, b, c|
  if (a + b + c == 1000) and (a ** 2 + b ** 2 == c ** 2)
    puts "#{a} * #{b} * #{c} = #{a*b*c}"
  end
end
