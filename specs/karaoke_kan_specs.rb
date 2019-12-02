require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../karaoke_kan")
require_relative("../customer")
require_relative("../rooms")
require_relative("../track")

class KaraokeKanTest < MiniTest::Test

  def setup
    @Karaoke = KaraokeKan.new("Karaoke Kan", 10000)
    @customer1 = Customer.new("Bob Harris", 3000, 40)
    @customer2 = Customer.new("Charlotte", 1000, 32 )
    @customer3 = Customer.new("Ken Watanabe", 600, 41)
    @customer4 = Customer.new("Tom Cruise", 500000, 57)
  end

  def test_till_has_cash
    assert_equal(10000, @till.till)
  end

  def test_karaoke_has_name
    assert_equal("Karaoke Kan",@Karaoke.name )
  end

  def test_customer_has_name
    assert_equal("Ken Watanabe", @customer3.name)
  end

  def test_customer_has_money
    assert_equal(, @customer3.name)
  end

  def test_karaoke_has_empty_room
    assert_equal(0, @karaoke.guest_check_in)
  end

end
