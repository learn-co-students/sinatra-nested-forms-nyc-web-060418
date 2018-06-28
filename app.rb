require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :index
    end

    get '/new' do
      erb :'/pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all
      # binding.pry

      # pirate_args = {name: params["pirate"]["name"], weight: params["pirate"]["weight"], height: params["pirate"]["height"]}
      # boat1_args = {name: params["boat1"]["name"], type: params["boat1"]["type"], booty: params["boat1"]["booty"]}
      # boat2_args = {name: params["boat2"]["name"], type: params["boat2"]["type"], booty: params["boat2"]["booty"]}
      #
      #
      # @pirate = Pirate.new(pirate_args)
      # @boat1 = Ship.new(boat1_args)
      # @boat2 = Ship.new(boat2_args)

      erb :'/pirates/show'
    end



  end
end
