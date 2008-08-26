class Player < ActiveRecord::Base
  belongs_to :location
  
  validates_uniqueness_of :name
  
  before_create :generate_location
  def generate_location
    self.location = Location.at(0, 0)
  end
  
  def move_to(location)
    self.location = location
    self.save
  end
end