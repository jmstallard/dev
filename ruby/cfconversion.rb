

puts "Enter degrees:"
d = gets.chomp
puts "Enter F/C:"
s=gets.chomp
puts "d=" + d + ", system=" + s

if s =~ /C/ 
	puts "in F, s=" + s
	r = (d.to_i * 9/5) + 32 
	s="C"
else 
	puts "in C, s=" + s
	r = (d.to_i - 32) * 5/9
	s="F"
end
puts "degrees " + s + "= " + r.to_s
