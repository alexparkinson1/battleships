require 'sinatra/base'

class BatteShips < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/newgame' do
    erb :playgame
  end

  set :views, Proc.new { File.join(root, "..", "views")
  }

  # start the server if ruby file executed directly
  run! if app_file == $0
end
