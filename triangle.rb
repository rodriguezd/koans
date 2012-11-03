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
# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

def triangle(a, b, c)
	begin
	  if a == b && b == c && a + b + c != 0
	  	:equilateral
	  elsif a + b < c
	   	raise TriangleError, "Error"
	  elsif a + c == b
	   	raise TriangleError, "Error"
	  elsif a + b + c != 0 && (a == b || a == c || b == c)
	  	:isosceles
	  elsif a != b && b != c && a != c && a > 0 && b > 0 && c > 0
	  	:scalene 
	  elsif a + b + c == 0
	  	raise TriangleError, "Error"
	  elsif a < 0 || b < 0 || c < 0
	  	raise TriangleError, "Error"
	  
	  end
	# rescue TriangleError => ex
		# result = :exception_handled
	 end
end


