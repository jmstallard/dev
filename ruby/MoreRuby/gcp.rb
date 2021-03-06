class CheckMDF
   def x(cookbook)
   	puts "in CheckMDF, cookbook=#{cookbook}"
      if File.exist?("#{cookbook}/metadata.rb")
         f = File.open("#{cookbook}/metadata.rb")
         f.each_line do |line|
            if /(depends)(\s*)([\'\"][A-Za-z0-9]+[\'\"])(\s*)([~>]*\s+\d+.\d+\.?\d?)?/.match(line)
	       puts "found dependencies in #{cookbook}: #{$3} version #{$5}"
	       puts "calling dande now for #{$3} version #{$5}."
	       newdep = DandE.new
	       newdep.x("#{$3}","#{$5}")
	    else puts "No depends in #{line}"
            end
         end
      else
         puts "error: file #{cookbook}/metadata.rb doesn't exist"
      end
   end
end

class DandE
   def x(cookbook, version)
      c=cookbook
      v=version
      puts "Proceeding to download cookbook #{c} verion #{v}"
      cmd = "knife cookbook site download #{c} #{v}"
      rc = system(cmd)
      puts "#{rc}"
      if rc
         puts "unpacking  #{c} now."
         cmd = "tar xvf #{c}-#{v}*.tar.gz"
         rc2 = system(cmd)
         if rc2
            puts "Checking dependencies of cookbook #{c} version #{v} now."
            dep = CheckMDF.new
	    dep.x("#{c}")
         else
            puts "Note: Error untaring cookbook ${#c}"

         end
      else puts "ERROR:knife command failed"
         exit
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
