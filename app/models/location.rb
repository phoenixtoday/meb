class Location < ActiveRecord::Base
  
  def self.at(x, y)
    find_or_create_by_x_and_y(x, y)
  end
end
