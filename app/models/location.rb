class Location < ActiveRecord::Base
  has_many :players
  attr_accessor :alias
  
  def self.at(x, y)
    find_or_create_by_x_and_y(x, y)
  end
  
  def neighours
    n = Location.at(0, 1)
    n.alias = "South"
    [n]
  end
  
  def to_s
    "(#{x}, #{y})"
  end
end
