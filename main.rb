require 'sinatra/base'
require 'haml'
require 'sass'
require 'coffee-script'

class Server < Sinatra::Base
  get '/' do
    @text = 'Hello, Tongue-ya app!'
    haml :index
  end
end

run Server.run!
