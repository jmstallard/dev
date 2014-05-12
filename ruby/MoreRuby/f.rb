
if(!ARGV[0])
   STDERR.puts "usage: Ruby filename."
   exit 0
end
i=0
if File.exist?(ARGV[0])
   puts "OK, got file"
   clist=""
   found = false
   f = File.open(ARGV[0])
   f.each_line do |path|
   	i=i+1	
      print "i=" + i.to_s + ",<#{path}>"
      if /\%w[\[\{]/ =~ path
	clist = clist + "#{path}"
	puts "before chomp, clist=<#{clist}>"
	clist = clist.chomp
	puts "after chomp, clist=<#{clist}>"
         puts "found word array, parsing:#{path}"
         clist = clist.sub(/\%w[\[\{]/,"")
	puts "in found1, clist=<#{clist}>"
         found = 1
         if /[\]\}]/ =~ path
            puts "a one-liner"
            clist = clist.sub(/[\]\}].*/,"")
            found = 2
            puts "in f2:clist=<#{clist}>"
         end
      elsif found == 1
	clist = clist + path.chomp
	puts "in elsif"
         if /[\]\}]/ =~ path
            clist = clist.sub(/[\]\}].*/,"")
            puts "FOUND END OF WORD ARRAY."
            found = 2
         end
         puts "in f2:clist=<#{clist}>"
      end
   end
   puts "clist=<#{clist}>"
end
