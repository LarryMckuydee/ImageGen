class Photo < Sequel::Model
  include ImageUploader::Attachment.new(:image)
  include ImageUploader::Attachment.new(:convert_image)
end
