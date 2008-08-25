class LocationsController < ApplicationController
  def pos
    @location = Location.at(params[:x], params[:y])
    @players = @location.players
  end

end
