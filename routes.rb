$LOAD_PATH.unshift File.expand_path('..', __FILE__)

require 'sinatra'
require 'shrine_conf'
require 'create'
require 'image_uploader'
require 'photo'
require 'pry'

get '/' do
  @photo = Photo.new
  erb :imagegen
end

post '/photos' do
  Photo.create(params[:photo])
  redirect '/photos'
end

get '/photos' do
  @photos = Photo.all
  erb :photos
end
