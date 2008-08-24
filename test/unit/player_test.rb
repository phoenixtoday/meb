require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  
  def test_name_should_be_uniq
    Player.create(:name => 'zhangshanfeng')
    assert !Player.new(:name => 'zhangshanfeng').valid?
  end
  
  def test_player_should_be_at_orign_point_after_create
    p = Player.create!(:name => 'zhangshanfeng')
    assert_equal Location.at(0, 0), p.location
  end
end
