require 'pry'
class A
  def a
    b
  end
  def b
    puts "this is b"
  end
  def c
    A.a1
  end
  def d
    self.a1
  end
  def e
    self.class.a1
  end

  def self.a1
    puts "this is c"
  end
  def self.b1
    self.new.a
  end
end

binding.pry

