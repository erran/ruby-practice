module FixnumExtensions
  def pi
    Float('%.2f' % Math::PI)
  end
end

module MathExtensions
  def squared
    self**2
  end
end

class Fixnum
  include MathExtensions
  extend FixnumExtensions
end

p Fixnum.pi
# => 3.14

p 2.squared
# => 4
