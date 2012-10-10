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

log = Logger.new(File.new('ftp.log', 'a'))
log.level = Logger::INFO

@ftp = connect_ftp
files = @ftp.nlst('/data/depot')

if files.size == 0
  log.info("There were no files to download")
else
  log.info("Found #{files.size} files, starting download...")
  files.each_with_index do |file, index|
    @ftp.chdir('/data/depot') if @ftp.pwd != '/data/depot' 
    begin
      log.info("Downloading file #{index}: #{file}")
      #@ftp.getbinaryfile(file, "downloads/#{file}")
  		#@ftp.delete(file)
    rescue Net::FTPReplyError
      log.error("FTP connection closed while trying to download #{file}")
      log.info("Reconnecting to FTP to try again")
      @ftp.close unless @ftp.closed?
      @ftp = connect_ftp
    end
  end
end