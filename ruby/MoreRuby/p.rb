puts "Enter in format adsfasdfa 'something' adfafd"
l = gets.chomp
w = l.split('\'')
# puts w.map {|n|}
puts w[1]

#/(\w\'[A-Za-z]+\'),(\w[\~\=\>\s+\<d[\.d]+)/.match(l)
#/(depends)(\s)(\'[A-Za-z]+\')(\s[\~\=\>\<]d[\.d]+)/.match(l)
#/(depends)(\s*)([A-Za-z]+)(\s[~=>\s+\d+.\d+)/.match(l)

#/(depends)(\s*)(\'[A-Za-z]+\')/.match(l)
#/(depends)(\s*)(\'[A-Za-z]+\')(\s*)(~=\s+\d+.\d+)/.match(l)

f = File.open(
if /(depends)(\s*)(\'[A-Za-z0-9]+\')(\s*[~>]*\s+)(\d+.\d+\.?\d?)?/.match(l)
puts "True!!"
else
puts "false "
end

puts "1=#{$1}, 2=#{$2}, 3=#{$3} 4=#{$4} 5=#{$5}"

