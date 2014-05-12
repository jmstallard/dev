# get a cookbook from community.opscode.com
# and all dependents declared in metadata.rb

# 

# 

class DandE
	def x(cookbook, version)
		c=cookbook
		v=version
		puts "Proceeding to download cookbook #{c} verion #{v}"
		cmd = "knife cookbook site download #{ParentCookbook} #{version}"
		rc = system(cmd)
		puts "#{rc}"
		if rc
			puts "unpacking  #{c} now."
			cmd = "tar xvf #{c}-#{v}*.tar.gz"
			rc2 = system(cmd)
			if rc2
				puts "Untarring of #{c} version #{v} successful."
				puts "parsing through dependencies of ${c}"
				l = ParseDependencies.new
				l.x("#{c}/metadata.rb")
			else 
				puts "Note: Error untaring cookbook ${#c}"
			end
		else puts "ERROR:knife command failed"
			exit
		end

	end
end

class ParseDependencies
	def x(file)
	f = File.open(file,"r")
	while !f.eof?
		line = f.readline
		if line =~ /depends/
			puts line
		end
	end
	end
end


puts "Are you under the chef-repo/cookbook directory? (y/n)\n"
response = gets.chomp
if response != "y"
	puts "#{response}"
	puts "OK, exiting, see you later."
	exit
end
puts "Enter the name of the cookbook to deploy"
ParentCookbook = gets.chomp
puts "Enter version, or <return> for latest version:"
version = gets.chomp
puts "ensure #{ParentCookbook} exists, on http://community.opscode.com"
d = DandE.new
d.x("#{ParentCookbook}","#{version}")
	
