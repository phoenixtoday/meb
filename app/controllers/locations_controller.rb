class LocationsController < ApplicationController
  before_filter :require_player
  
  def pos
    @location = Location.at(params[:x], params[:y])
    @players = @location.players
    @player.move_to(@location)
  end
  
  protected
  def require_player
    player_id = session['player']
    redirect_to login_url unless player_id
    @player = Player.find(player_id)
  end

end
