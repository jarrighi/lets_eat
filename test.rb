require 'sinatra/base'

class Test < Sinatra::Base
  get '/' do
    'Hello Test!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
