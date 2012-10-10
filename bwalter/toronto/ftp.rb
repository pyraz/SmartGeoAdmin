require 'net/ftp'
require 'timeout'
require 'pry'
require 'logger'

def connect_ftp
  ftp = Net::FTP.new
  ftp.connect('64.40.242.66', '3131')
  ftp.login('admin', 'tysseBDS3')
  ftp.passive = true
  ftp.resume = true
  return ftp
end

log = Logger.new(File.new('/var/dropbox/toronto_data/ftp.log', 'a'))
log.level = Logger::INFO

@ftp = connect_ftp
files = @ftp.nlst('/data/depot')

if files.size == 0
  log.info("There were no files to download")
else
  log.info("Found #{files.size} files, starting download...")
  counter = 0
  while counter < files.size
    @ftp.chdir('/data/depot') if @ftp.pwd != '/data/depot' 
    begin
      log.info("Downloading file #{counter}: #{files[counter]}")
      @ftp.getbinaryfile(files[counter], "downloads/#{files[counter]}")
  		@ftp.delete(files[counter])
      counter += 1
    rescue Net::FTPError
      log.error("FTP connection closed while trying to download #{files[counter]}")
      log.info("Reconnecting to FTP to try again...")
      @ftp.login('admin', 'tysseBDS3')
    end
  end
end