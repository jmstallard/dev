

class Dtob
	def d2b(d)
	if d > 0 
		d2b(d/2)
		print d % 2
	end
end
end	

d = Dtob.new
d.d2b(ARGV[0].to_i)
