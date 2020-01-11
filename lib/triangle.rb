class Triangle
  attr_accessor :side_1,:side_2,:side_3
  def initialize(side_1,side_2,side_3)
   @side_1 = side_1
   @side_2 = side_2
   @side_3 = side_3
  end 
  
  def kind
    if @side_1 == @side_2 && @side_3 == @side_1 && @side_1 > 0 
      :equilateral
    elsif @side_1 == @side_2 && @side_1 != @side_3 && @side_1 > 0 && @side_3 > 0 or @side_1 == @side_3 && @side_1 != @side_2 && @side_1 > 0 && @side_2 > 0 or @side_2 == @side_3 && @side_2 != @side_1 && @side_2 > 0 && @side_1 > 0 
      :isosceles
    elsif @side_1 != @side_2 && @side_1 != @side_3 && @side_3 != @side_2
      :scalene 
    elsif @side_1 + @side_2 < @side_3 or @side_2 + @side_3 < @side_1 or @side_1 + @side_3 < @side_2 or @side_1.abs != @side_1 or @side_2.abs !=  or @side_3.abs <= -1
      raise TriangleError
    end 
  end 
 
  class TriangleError < StandardError
    # triangle error code
  end
end