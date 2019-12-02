require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../track")

class TrackTest < MiniTest::Test

  def setup
    @track1 = Track.new("Bad Moon rising")
    @track2 = Track.new("Bobby Brown Goes Down")
    @track3 = Track.new("I Want to Break Free")
    @track4 = Track.new("Science Fiction/ Double Feature")
    @track5 = Track.new("Dreams")
    @track6 = Track.new("Toto")
  end

end
