#!/usr/bin/env ruby

users = %w(atarrell blowry bwalter bwalter dhakkari jgrasmic jgrasmic 
  jhoopes jhoopes jrittger jrittger kstone mrubin mdangelm mparekh 
  ntoohey rhort skimmel arevil dlasich delborne lfiguero mmooney 
  tcamp bkenneal)

users.each do |user|
  system("sudo usermod -aG smartgeo #{user}")
end
