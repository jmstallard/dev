# get a cookbook from community.opscode.com
# and all dependents declared in metadata.rb

# 

# 

puts "Are you under the chef-repo/cookbook directory? (y/n)\n"
response = gets.chomp

if response != "y" then
	puts "#{response}"
	puts "OK, exiting, see you later."
	exit
end
puts "Enter the name of the cookbook to deploy"
ParentCookbook = gets.chomp

puts "Enter version, or <return> for latest version:"
version = gets.chomp

puts "ensure #{ParentCookbook} exists, on http://community.opscode.com"
puts "downloading #{ParentCookbook} now."

cmd = "knife cookbook site download #{ParentCookbook} #{version}"

string = `echo #{cmd}`
puts "executing:#{string}"
rc = system(cmd)
puts "#{rc}"
if rc
puts "unpacking  #{ParentCookbook} now."
cmd = "tar xvf #{ParentCookbook}-#{version}*.tar.gz"
rc2 = system(cmd)
end

puts "Now checking dependencies of module : 
