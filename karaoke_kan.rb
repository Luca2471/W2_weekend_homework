class Karaoke_kan

  attr_reader :name, :till,

  def initialize(name, till)
    @name = test_has_name
    @till = till
    @rooms = {}
  end

  def rent_room(room)
    if sufficient_funds?(room)
      @wallet -= room.price()
    end
  end

  def guest_checks_in_in_room(room)
      guest = room.guest_check_in()
      @rooms << room if !guest.nil?
    end
    
end
