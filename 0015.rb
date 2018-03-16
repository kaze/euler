# --------------------------------------------------------------------------- #
# Starting in the top left corner of a 2×2 grid, and only being able to move to
# the right and down, there are exactly 6 routes to the bottom right corner.
#
# How many such routes are there through a 20×20 grid?
# --------------------------------------------------------------------------- #
def lattice_path(sides)
   a = Array.new(sides + 1) { 1 }

   (0..sides).each do |col|
     a[col] *= 2
     (col + 1).upto(sides - 1) do |row|
       a[row] = a[row-1] + a[row]
     end
   end

   a[sides - 1]
 end

 puts lattice_path(20)
