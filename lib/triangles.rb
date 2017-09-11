class Triangles
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  def tri_type
    if (@side_1 == @side_2) && (@side_2 == @side_3)
      return "equilateral"
    elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
      return "isosceles"
    elsif (((@side_1 + @side_2) <= @side_3) || ((@side_1 + @side_3) <= @side_2) || ((@side_2 + @side_3) <= @side_1))
      return "not a triangle"
    elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
      return "scalene"
    end
  end
end
