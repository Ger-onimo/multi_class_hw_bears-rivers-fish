
require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../fish")


class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Ross", "Grizzly")
  

  end

  def test_name_of_bear
    assert_equal("Ross", @bear.bear_name)
  end

  def test_type_of_bear
    assert_equal("Grizzly", @bear.type)
  end

  def test_stomach__empty
    assert_equal(0, @bear.stomach_count())
  end

  def test_bear_takes_fish
    @bear.take_fish_from_river(@fish1)
    assert_equal(1, @bear.stomach_count())
  end

end
