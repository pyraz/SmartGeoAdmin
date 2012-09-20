require 'rubygems'
require 'active_record'
require 'yaml'
require 'pry'

class SeattleRecord < ActiveRecord::Base
end

db = YAML::load(File.open('db/database.yml'))
ActiveRecord::Base.establish_connection(db)

lines = File.new('data/seattle_data.csv').readlines
header = lines.shift.strip

header.force_encoding("UTF-8").gsub!(
  "\xEF\xBB\xBF".force_encoding("UTF-8"), '')

keys = header.split(',')
lines.each_with_index do |line, l|
  params = {}
  values = line.strip.split(',')
  keys.each_with_index do |key, i|
    if key == "date"
      params[key] = DateTime.parse(values[i])
    else
      params[key] = values[i]
    end
  end
  begin
    SeattleRecord.create(params)
  rescue ActiveRecord::UnknownAttributeError => e
    puts "Error on line: #{l}\n#{e.message}"
    binding.pry
  end
end
