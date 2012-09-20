require 'rubygems'
require 'active_record'

class SeattleRecord < ActiveRecord::Base
end

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'trevor',
  :password => '@NN@ rules!',
  :host => 'localhost'
)

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