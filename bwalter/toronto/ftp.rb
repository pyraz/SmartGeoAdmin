require 'net/ftp'
require 'logger'

def connect_ftp
  ftp = Net::FTP.new
  ftp.connect('64.40.242.66', '3131')
  ftp.login('admin', 'tysseBDS3')
  ftp.passive = true
  ftp.resume = true
  ftp.debug_mode = true
  return ftp
end

log = Logger.new(File.new('ftp.log', 'a'))
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
      @ftp.getbinaryfile(files[counter], 
        "downloads/#{files[counter]}")
  		#@ftp.delete(files[counter])
      counter += 1
    rescue Exception => e
      log.error("Exception raised: #{e.inspect}")
      log.error("FTP connection closed while trying to download " +
        "#{files[counter]}")
      log.info("Reconnecting to FTP to try again...")
    end
  end
end