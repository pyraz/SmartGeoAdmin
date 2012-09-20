require 'rubygems'
require 'active_record'
require 'yaml'

class SeattleRecord < ActiveRecord::Base
end

db = YAML::load(File.open('db/database.yml'))
ActiveRecord::Base.establish_connection(db)

lines = File.new('seattle_data_sample.csv').readlines
header = lines.shift.strip
keys = header.split(',')
lines.each do |line|
  params = {}
  values = line.strip.split(',')
  keys.each_with_index do |key, i|
    if key == "date"
      params[key] = DateTime.parse(values[i])
    else
      params[key] = values[i]
    end
  end
  SeattleRecord.create(params)
end