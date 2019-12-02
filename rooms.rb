class Rooms
  attr_reader :number, :price

  def initialize(number)
    @number = number
    @price = price
    @songs = {}
  end

  def play_song(track)
      song = track.add_song()
      @songs << song if !room.nil?
  end

  def add_song_to_queue(track)
    @songs << track
  end

end
