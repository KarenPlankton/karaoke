require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest.rb')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../karaoke_bar.rb')





class TestGuest < Minitest::Test


  def setup
    @room1=Room.new("A2")
    @guest1=Guest.new("Nick",50,"Frozen")
    @guest2=Guest.new("Anna",55,"Bards Song")
    @guest3=Guest.new("Rob",80,"Eye of the tiger")
    @guest4=Guest.new("Lola",70,"Song to say goodbye")
  end

  def test_guest_name
  assert_equal("Nick",@guest1.name)
  end

  def test_fav_song
  assert_equal("Bards Song",@guest2.fav_song)
  end

 def test_pay
   @guest1.pay(10)
   assert_equal(40,@guest1.cash)
 end

 def test_is_this_fav_song
   @room1=Room.new("A2")
   @song1=Song.new("We are the champions")
   @song2=Song.new("Billie Jean")
   @song3=Song.new("Eye of the tiger")
   @song4=Song.new("Space Oddity")
   @room1.add_song(@song1)
   @room1.add_song(@song2)
   @room1.add_song(@song3)
   @room1.add_song(@song4)

    assert (@guest3.is_this_fav_song(@room1.songs))
 end

end
