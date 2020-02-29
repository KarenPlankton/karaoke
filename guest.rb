class Guest
  attr_reader:name,:cash,:fav_song
  def initialize(name,cash,fav_song)
    @name=name
    @cash=cash
    @fav_song=fav_song
  end

  def pay(fee)
    @cash =@cash-fee

  end

  def is_this_fav_song(songs)
    songs.each do|song|
      if song=@fav_song
        puts "Whoo!"
        return true
      else
        return false
      end
    end 
    end

  end
