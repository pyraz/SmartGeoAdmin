require 'net/ftp'
require 'timeout'
require 'pry'
require 'logger'

log = Logger.new(File.new('ftp.log', 'a'))
log.level = Logger::INFO

ftp = Net::FTP.new
ftp.connect('64.40.242.66', '3131')
ftp.login('admin', 'tysseBDS3')
ftp.passive = true

files = ftp.nlst('/data/depot')
ftp.chdir('/data/depot')

if files.size == 0
  log.info("There were no files to download")
else
  files.each do |file|
    log.info("Downloading #{file}...")
    ftp.getbinaryfile(file, "downloads/#{file}")
		ftp.delete(file)
  end
end
