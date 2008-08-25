class PlayersController < ApplicationController
  def login
  end
  
  def attach
    player = Player.find_or_create_by_name(params[:name])
    session['player'] = player.id
    flash[:notice] =  "login successful!"
    redirect_to location_url(:x => player.location.x, :y => player.location.y)
  end
end
