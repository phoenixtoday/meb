class PlayersController < ApplicationController
  def login
  end
  
  def attach
    session['player'] = Player.find_or_create_by_name(params[:name]).id
    flash[:notice] =  "login successful!"
    render :template => "players/login"
  end
end
