require 'test_helper'

class LocationTest < ActiveSupport::TestCase

  def test_should_be_able_to_tell_neighours_in_for_direction
    assert_equal Location.at(1, 0), Location.at(0, 0).east
    assert_equal Location.at(-1, 0), Location.at(0, 0).west
    assert_equal Location.at(0, 1), Location.at(0, 0).north
    assert_equal Location.at(0, -1), Location.at(0, 0).south
  end
  
  def test_go_back_and_forth
    p = Location.at(155, 162)
    assert_equal p, p.north.south
    assert_equal p, p.north.east.south.west
  end
  
end
