require 'sinatra/base'
require 'haml'
require 'sass'
require 'coffee-script'
require 'pry'

class Server < Sinatra::Base
  get '/' do
    @text = "#{Time.now}"
    haml :index
  end

  get '/stylesheets/main.css' do
    sass :'assets/css/main'
  end
end

Server.run!
