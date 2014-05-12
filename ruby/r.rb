#!/usr/bin/ruby


f = File.open ("m.txt")

f.each_line (",") do |l| 
	puts l
end
f.rewind
f.each  {|line|
#	line.dump.chomp
	#a=line.split(/,/).chomp
	 #puts "l=#{line}" 
	l=	line.chomp
#	puts "line=#{line}"
	 a=l.split(/,/)
#	a.each {|n| puts "name=#{n}" }
#kkk	puts a.length 
	for i in 0..(a.length - 1)
		print "i="
		puts "<" + a[i] + ">"
		end
puts a.inspect
}
