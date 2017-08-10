require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      ships = params[:pirate][:ships]
      ship1 = ships[0]
      ship2 = ships[1]
      @ship1 = Ship.new(ship1)
      @ship2 = Ship.new(ship2)
      erb :'pirates/show'
    end

    get '/pirates' do
      erb :'pirates/show'
    end

  end
end
