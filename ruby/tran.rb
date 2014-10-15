 #!/usr/bin/env ruby
 require 'rubygems'
 require 'net/sshH' 
 HOST = '192.168.1.5'
 USER = 'vagrant'
 PASS = 'vagrant'
 
 Net::SSH.start( HOST, USER, :password => PASS ) do|ssh|
 result = ssh.exec!('ls')
 puts result
 end
