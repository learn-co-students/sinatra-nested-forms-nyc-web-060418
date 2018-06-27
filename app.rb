require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :index
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do

      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])

      @first_ship = Ship.new(params[:pirate][:ships][0][:name], params[:pirate][:ships][0][:type], params[:pirate][:ships][0][:booty])

      @second_ship = Ship.new(params[:pirate][:ships][1][:name], params[:pirate][:ships][1][:type], params[:pirate][:ships][1][:booty])

      erb :'pirates/pirates'
    end



  end
end
