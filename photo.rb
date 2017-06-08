class Photo < Sequel::Model
  include ImageUploader::Attachment.new(:image)
end
