require 'rubygems'
require 'active_record'
require 'yaml'
require 'pry'

class NbSeattleRecord < ActiveRecord::Base
end

class SbSeattleRecord < ActiveRecord::Base
end

class Importer

  db = YAML::load(File.open('db/database.yml'))
  ActiveRecord::Base.establish_connection(db)

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
          params[key] = DateTime.strptime(values[i], 
              "%l:%M:%S.%L %p %m/%d/%Y")
          binding.pry
        else
          params[key] = values[i]
        end
      end
      begin
        if (direction == :north)
          NbSeattleRecord.create(params)
        else
          SbSeattleRecord.create(params)
        end
      rescue Exception => e
        puts "Error on line: #{l}\n#{e.message}"
      end
    end
  end

end

importer = Importer.new
importer.populate_data('./JCM_NB_tunnel_test.csv', :north)
importer.populate_data('./JCM_SB_tunnel_test.csv', :south)