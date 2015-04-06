class Triangle
  def initialize(a, b, c)
    @sides = [a, b, c].sort
    validate_lengths
  end

  def type
    case @sides.uniq.size
      when 1 then
        :equilateral
      when 2 then
        :isosceles
      else
        :scalene
    end
  end

  private
  def validate_lengths
    if @sides.any? { |x| x.is_a?(String) }
      raise "Characters not allowed"
    end

    if @sides.any? { |x| x <= 0 }
      raise "Sides must be greater than 0"
    end

    if @sides[0] + @sides[1] <= @sides[2]
      raise "Not valid triangle lengths"
    end
  end
end