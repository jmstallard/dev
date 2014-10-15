
#program to illustrate scope of self.
puts " program, top context"
puts "self is: #{self}"

class C

   puts "in class definition block:"
   puts "self is: #{self}"

   def self.x
      puts "Class methode C.x:"
      puts "self is: #{self}"
   end

   def C.y
      puts "Class methode C.y:"
      puts "self is: #{self}"
   end

   def m
      puts "In method of class C:"
      puts "SELF is: #{self}"
   end
end

c = C.new
c.m

class D < C
end

D.x

