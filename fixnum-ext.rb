module FixnumExtensions
  module ClassMethods
    def pi
      Float('%.2f' % Math::PI)
    end
  end

  module InstanceMethods
    def squared
      self**2
    end
  end
  
  def self.included(base)
    base.extend ClassMethods
    base.send(:include, InstanceMethods)
  end
end

class Fixnum
  include FixnumExtensions
end

p Fixnum.pi
# => 3.14

p 2.squared
# => 4
