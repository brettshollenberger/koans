# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#

def triangle(a, b, c)
  if a <= 0 || b <= 0 || c <= 0
    raise TriangleError, "You gotta nonexistent triangle!"
  end
  x, y, z = [a, b, c].sort!
  raise TriangleError, "That's not a thing!" if x + y <= z
  arr = [x, y, z]
  if arr.uniq.length == 1
    return :equilateral
  elsif arr.uniq.length == 2
    return :isosceles
  else
    return :scalene
  end
  # WRITE THIS CODE
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
