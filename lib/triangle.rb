class Triangle

  class TriangleError < StandardError
   end
  # write code here
  attr_accessor :a,:b,:c
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    
  end
  def kind
    #the triangle inequality
    sides = [a,b,c].sort
    unless sides[0]+sides[1] > sides[2]
      raise TriangleError
    end
    if a<=0 || b<=0 || c<=0    
      raise TriangleError   
       elsif a ==b && a ==c && b==c
        :equilateral
      elsif a == b || a==c || b==c
        :isosceles
      elsif a !=b && a !=c && b!=c
        :scalene
          end
      end
        
  
end
