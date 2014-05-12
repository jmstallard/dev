

require 'rubygems'
require 'net/ssh'


Net::SSH.start("127.0.0.1", "vagrant", :password => "vagrant") do |ssh|
  result = ssh.exec!("ls -l")
  puts result
end

