module M
  def m
    p "mmmmm"
  end
end

class C
  include M
  def self.test
    p "class method"
  end
end

class Ex
  def reigai(name)
    begin
      raise ArgumentError
    rescue NameError
      p "aaaaaaa"
    rescue StandardError => e
      p e.class
    rescue ArgumentError
      p "bbbbbbb"
    end
  end
end

class Hoge
  def fuga(o=nil)
    hoge
  end
  #private
  def hoge
    puts "hogehoge"
  end
end

#Hoge.new.fuga(Hoge.new)

class Aliastest
  def a
    p "aaaa"
  end
  alias :b :a
end

#a=Aliastest
#a.new.a
#a.new.b
class A
  @@x = 0
  class << self
    @@x = 1
    def x
      @@x
    end
  end
  def x
    @@x = 2
  end
end
class B < A
  #@@x = 3
end

begin
  exit
rescue 
  p "aaaaaa"
end
p "aaaa"
  
