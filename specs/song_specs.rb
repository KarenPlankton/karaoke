require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../song')

class TestSong < Minitest::Test

def setup
  @song1=Song.new("We are the champions")
  @song2=Song.new("Billie Jean")
  @song3=Song.new("Eye of the tiger")
  @song4=Song.new("Space Oddity")
end

 def test_song_name
   assert_equal("Billie Jean",@song2.name)
end
end
