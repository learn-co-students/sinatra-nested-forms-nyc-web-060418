require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'/pirates/new'
    end

    get '/pirates' do
      erb :'/pirates/show'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      #binding.pry

      params[:pirate][:ships].each do |args|
        Ship.new(args)
      end

      @ships = Ship.all


      erb :'/pirates/show'
    end


  end
end
