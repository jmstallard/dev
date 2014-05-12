class OddD
   def OddD(d)
      return d if d==0
      if d > 0 (OddD(d-10)  % 2)
      end
   end
end

d = OddD.new
d.OddD(ARGV[0].to_i)
# s =~ s/0//;g
#print s
