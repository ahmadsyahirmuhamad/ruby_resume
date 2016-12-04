# myapp.rb
require 'sinatra'
require 'json'
require 'ostruct'

get '/' do
  file = File.read('resume.json')
  @data = JSON.parse(file, object_class: OpenStruct)
  erb :index
end
