
if(!ARGV[0])
   STDERR.puts "usage: Ruby filename."
   exit 0
end
if File.exist?(ARGV[0])
   puts "OK, got file"
   clist=""
   found = false
   f = File.open(ARGV[0])
   f.each_line do |path|
      puts #{path}
      if true
         puts "found word array, parsing:#{path}"
         if true
            puts "a one-liner"
            if true
               found = 2
            end
         end
      else
         if true
         end
      end
   end
end
