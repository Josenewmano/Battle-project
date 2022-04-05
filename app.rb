require 'sinatra/base'
# require 'sinatra/reloader' if development?

class Battle < Sinatra::Base

  get '/' do
    "Testing infrastructure is working"
  end

end