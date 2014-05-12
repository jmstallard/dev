

puts "enter userID"
userID = gets
puts "userID:" + userID
ss = userID.gsub(/-cis1|-CIS1/,'')
puts "parsed userID:" + ss
