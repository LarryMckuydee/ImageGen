require "rubygems"
require "sequel"

DB = Sequel.sqlite

DB.create_table :photos do
  primary_key :id
  Text :image_data
end

DB.fetch("SELECT * FROM photos") do |row|
  puts row[:image_data]
end
