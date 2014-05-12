#!/usr/bin/ruby
require 'csv'

CSV.foreach("m.csv") do |row|
  # use row here...
	row.each { |i| puts "i=#{i} "}
end

for i in ARGV[0]..ARGV[1] do
	puts "myBox#{i}"
end
