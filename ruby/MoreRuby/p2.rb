

puts "Enter in format adsfasdfa 'something' adfafd"
l = gets.chomp
if /(depends)(\s*)(\'[A-Za-z0-9]+\')(\s*[~>]*\s+)(\d+.\d+\.?\d?)?/.match(l)
puts "True!!"

if (/\d+\.\d+/) =~ #{$5}
 puts "yep"
end
else
puts "false "
end
