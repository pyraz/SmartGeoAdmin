require 'rubygems'
require 'active_record'
require 'yaml'

class SeattleRecord < ActiveRecord::Base
end

db = YAML::load(File.open('db/database.yml'))
ActiveRecord::Base.establish_connection(db)

lines = File.new('seattle_data.csv').readlines
header = lines.shift.strip
keys = header.split(',')
lines.each do |line|
  params = {}
  values = line.strip.split(',')
  keys.each_with_index do |key, i|
    params[key] = values[i]
  end
  SeattleRecord.create(params)
end