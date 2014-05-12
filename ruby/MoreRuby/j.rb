#!/c/cygwin/opscode/bin/ruby
require pp
class DandE
 def x(cookbook, version)
 c=cookbook
 v=version
 puts "Proceeding to download cookbook #{c} verion #{v}"
 end
 end

 d = DandE.new
 d.x("jenkins", "2.0.2")
