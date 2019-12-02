require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../rooms")

class RoomsTest < MiniTest::Test

  def setup
    @room1 = Room.new(25, 300)
    @room2 = Room.new(28, 500)
    @room3 = Room.new(37, 300)
  end

  def test_room_has_name()
    assert_equal(25, @number1.number)
  end

  def test_room_has_price()
    assert_equal(300, @number1.price)
  end


  def test_can_check_in_if_room_is_empty
      room1 = @room.guest_check_in
      room2 = @room.guest_check_in
      room3 = @room.guest_check_in
      assert_nil(full)
end
