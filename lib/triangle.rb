

class Triangle

  attr_reader :a, :b, :c
  attr_accessor :type

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if !pos_int?
      raise TriangleError
    elsif !triangle?
      raise TriangleError
    elsif equilateral?
      @type = :equilateral
    elsif isosceles?
      @type = :isosceles
    elsif scalene?
      @type = :scalene
    end
  end

  def triangle?
    @a + @b > @c && @a + @c > @b && @b + @c > @a
  end

  def pos_int?
    @a > 0 && @b > 0 && @c > 0
  end

  def isosceles?
    @a == @b || @a == @c || @b == @c
  end

  def equilateral?
    @a == @b && @b == @c
  end

  def scalene?
    @a != @b && @b != @a
  end

end




class TriangleError < StandardError

end
