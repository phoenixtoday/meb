class PlayersController < ApplicationController
  def login
  end
  
  def logout
    reset_session
    redirect_to login_url
  end
  
  def attach
    player = Player.find_or_create_by_name(params[:name])
    session['player'] = player.id
    flash[:notice] =  "login successful!"
    redirect_to url_for_location(player.location)
  end
end
