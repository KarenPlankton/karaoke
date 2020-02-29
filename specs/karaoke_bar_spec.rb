require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../karaoke_bar')
require_relative('../room')
require_relative('../guest')
require_relative('../song')


class TestKaraokeBar < Minitest::Test

  def setup
    @karaoke_bar1=KaraokeBar.new
    @room1=Room.new("A2")
    @guest1=Guest.new("Nick",50,"Frozen")
  end

  def test_check_in_guest
    @guest1=Guest.new("Nick",50,"Frozen")
    @karaoke_bar1.add_room(@room1)
    @karaoke_bar1.check_in_guest(@guest1)
    assert(@room1.guests.include?(@guest1))
    assert_equal(10,@karaoke_bar1.till)
  end

  def test_check_out_guest
    @guest1=Guest.new("Nick",50,"Frozen")
    @karaoke_bar1.add_room(@room1)
    @karaoke_bar1.check_in_guest(@guest1)
    @room1.remove_guest(@guest1)
    assert_equal(0,@room1.guests.length)

  end


end
