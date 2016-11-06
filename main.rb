require 'sinatra/base'
require 'haml'
require 'sass'
require 'coffee-script'
require 'rack'
require 'pry'

class Server < Sinatra::Base
  get '/' do
    @text = "#{Time.now}"
    haml :index
  end

  get '/stylesheets/main.css' do
    sass :'assets/css/main'
  end

  # images
  use Rack::Static, urls: ['/images'], root: 'views'
end

Server.run!
