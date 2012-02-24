# the bridge wizard will make sure you've got the right name
requires = %w{ sinatra json }
begin
  requires.each { |r| require r } 
rescue LoadError
  require 'rubygems'
  requires.each { |r| require r }
end

use Rack::Session::Cookie

enable :run
set :public_folder, File.dirname(__FILE__) + '/public'

