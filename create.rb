require "rubygems"
require "sequel"

DB = Sequel.sqlite

DB.create_table :photos do
  primary_key :id
  Text :image_data
  Text :convert_image_data
end

DB.fetch("SELECT * FROM photos") do |row|
  puts row[:image_data]
  puts row[:convert_image_data]
end
