require 'sinatra/base'
require 'haml'
require 'sass'
require 'coffee-script'
require 'rack'
require 'pry'

class Server < Sinatra::Base
  get '/' do
    haml :index
  end

  get '/submit' do
    haml :submit
  end

  get '/assets/main.css' do
    sass :'assets/css/main'
  end

  # images
  use Rack::Static, urls: ['/images'], root: 'views'
  # css
  use Rack::Static, urls: ['/stylesheets'], root: 'views'
end

Server.run!
