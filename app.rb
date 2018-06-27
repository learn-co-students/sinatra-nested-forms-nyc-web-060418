require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :index
    end
    # code other routes/actions here
    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.create(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])

      @ship_1 = Ship.create(params[:ships][0][:name], params[:ships][0][:type], params[:ships][0][:booty] )

      @ship_2 = Ship.create(params[:ships][1][:name], params[:ships][1][:type], params[:ships][1][:booty] )
      erb :show
    end

  end
end
