require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room.rb')
require_relative('../karaoke_bar.rb')
require_relative('../guest.rb')
require_relative('../song.rb')




class TestRoom < Minitest::Test

  def setup
    @room1=Room.new("A2")
    @guest1=Guest.new("Nick",50,"Frozen")
    @guest2=Guest.new("Anna",55,"Bards Song")
    @guest3=Guest.new("Rob",80,"Eye of the tiger")
    @guest4=Guest.new("Lola",70,"Song to say goodbye")
  end


  def test_add_guest
    @room1.add_guest(@guest1)

    assert_equal(1,@room1.guests.length)
  end

  def test_remove_guest
    @room1.add_guest(@guest1)
    @room1.remove_guest(@guest1)
    assert_equal(0,@room1.guests.length)
  end


  def test_if_full
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    @room1.add_guest(@guest4)
    assert(@room1.is_room_full)
  end


  def test_if_room_is_not_full
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    refute(@room1.is_room_full)
  end

  def test_if_song_added
    @song1=Song.new("We are the champions")
    @song2=Song.new("Billie Jean")
    @song3=Song.new("Eye of the tiger")
    @song4=Song.new("Space Oddity")
    @room1.add_song(@song1)
    @room1.add_song(@song2)
    @room1.add_song(@song3)
    @room1.add_song(@song4)
    assert_equal(4,@room1.songs.length)
  end

  def test_song_removed
    @song1=Song.new("We are the champions")
    @song2=Song.new("Billie Jean")
    @song3=Song.new("Eye of the tiger")
    @song4=Song.new("Space Oddity")
    @room1.add_song(@song1)
    @room1.add_song(@song2)
    @room1.add_song(@song3)
    @room1.add_song(@song4)
    @room1.remove_song(@song1)
    assert_equal(3,@room1.songs.length)
  end


  end
