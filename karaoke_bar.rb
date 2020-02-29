class KaraokeBar
   attr_accessor :rooms,:till
  def initialize
    @rooms=[]
    @till=0
    @fee=10
  end

  def add_room(room)
    @rooms.push(room)
  end

 def check_in_guest(guest)
   @rooms.each do|room|
    if room.add_guest(guest)
      print "Move to the next room"
    else
      print "Guest added to room"
      guest.pay(@fee)
      @till=@till + @fee
      return true
    end
  end
 end

 def check_out_guests(guest)
      room.remove_guest(guest)   
 end



end
