require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  
  def test_name_should_be_uniq
    Player.create(:name => 'zhangshanfeng')
    assert !Player.new(:name => 'zhangshanfeng').valid?
  end
end
