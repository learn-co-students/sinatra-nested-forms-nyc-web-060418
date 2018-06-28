require './environment'

module FormsLab
  class App < Sinatra::Base


    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ship = params[:pirate][:ships].map {|ship_info| Ship.new(ship_info)}

      erb :"pirates/show"
    end

  end
end
