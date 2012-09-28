require 'rubygems'
require 'active_record'
require 'yaml'
require 'pry'

class NbSeattleRecord < ActiveRecord::Base
end

class SbSeattleRecord < ActiveRecord::Base
end

db = YAML::load(File.open('db/database.yml'))
ActiveRecord::Base.establish_connection(db)

populate_data('data/JCM_NB_tunnel_test.csv', :north)
populate_Data('data/JCM_SB_tunnel_test.csv', :south)

def populate_data(file, direction)
  lines = File.new(file).readlines
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
      if (direction == :north)
        NBSeattleRecord.create(params)
      else
        SBSeattleRecord.create(params)
      end
    rescue ActiveRecord::UnknownAttributeError => e
      puts "Error on line: #{l}\n#{e.message}"
      binding.pry
    end
  end
end


