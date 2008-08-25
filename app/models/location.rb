class Location < ActiveRecord::Base
  has_many :players
  attr_accessor :alias
  
  def self.at(x, y)
    find_or_create_by_x_and_y(x, y)
  end
  
  def at(x, y)
    self.class.at(x, y)
  end
  
  def east
    at(x + 1, y)
  end
  
  def west
    at(x - 1 , y)
  end
  
  def north
    at(x, y + 1)
  end
  
  def south
    at(x, y - 1)
  end
  
  def to_s
    "(#{x}, #{y})"
  end
end
