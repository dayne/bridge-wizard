# the bridge wizard will make sure you've got the right name

require 'rubygems'
require 'sinatra'
require 'oauth2'
require 'json'

enable :run
set :public_folder, File.dirname(__FILE__) + '/public'

get "/" do
  erb :index
end

post "/" do
  "hello @name"
end
