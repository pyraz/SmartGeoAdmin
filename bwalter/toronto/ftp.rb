require 'net/ftp'
require 'timeout'
require 'pry'

ftp = Net::FTP.new
ftp.connect('64.40.242.66', '3131')
ftp.login('admin', 'tysseBDS3')
ftp.passive = true

puts ftp.pwd
files = ftp.ls('*.conf')
puts files

Timeout.timeout(30) do
  ftp.gettextfile('niwebserver.conf', 'yoyoyo.conf')
end