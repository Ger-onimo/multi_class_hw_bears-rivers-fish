
require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Ross", "Grizzly")

    @fish1 = Fish.new("Sally")
    @fish2 = Fish.new("Billy")
    @fish3 = Fish.new("Sammi")

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
    @river = River.new("Amazon")
    @river.add_to_fish_stock(@fish1)
    @bear.take_fish(@river)
    assert_equal(1, @bear.stomach_count())
    assert_equal(0, @river.fish_in_river())
  end

end
