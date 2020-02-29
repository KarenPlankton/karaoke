class Room
  attr_reader:name, :free_space,:songs,:guests
  def initialize(name)
    @name=name
    @free_space=4
    @guests=[]
    @songs=[]
  end

  def add_guest(guest)
    if is_room_full
      puts "Sorry,room is full"
      return true
    else
      @guests.push(guest)
      return false
    end
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def add_song(song)
    @songs.push(song)
  end

  def remove_song(song)
    @songs.delete(song)
  end


  def is_room_full
    if @guests.length>=@free_space
      return true
    else
      return false
    end
  end
end
