require "scanf"
puts "give me a file"
s = gets.chomp
f = File.open(s)
f.each_line do |p|
p.chomp
s=p.scanf("%s")
i=s[0]
j=i.sub(/\%w[\[\{]/,"XYZ")
puts "i=<#{i}>"
puts "j=<#{j}>"
end
