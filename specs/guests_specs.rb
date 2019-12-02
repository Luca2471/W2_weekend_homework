require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../customer")
require_relative("../rooms")

class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("Bob Harris", 3000)
    @customer2= Customer.new("Charlotte", 1000 )
    @customer3 = Customer.new("Ken Watanabe", 600)
  end

  def test_customer_has_cash
    assert_equal(3000, @costumer1.wallet)
  end

  def test_customer_has_name
    assert_equal("Bob Harris", @costumer1.name)
  end

end
