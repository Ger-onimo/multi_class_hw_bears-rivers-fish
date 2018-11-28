require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")
require_relative("../bear")


class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
  # @river = River.new("Amazon", 300) #thinking this would be
  # used instead of array
  # use something a bit neAter than naming fish in an array - that seems not of the real world!!

    @fish1 = Fish.new("Sally")
    @fish2 = Fish.new("Billy")
    @fish3 = Fish.new("Sammi")

  end

  def test_name_of_river                  #test initialize and riv_name method
    assert_equal("Amazon", @river.riv_name)
  end

  # def test_number_of_fish               #test initialize and count method (TODO)
  #   assert_equal(300, @river.fish_num)
  # end

  def test_fish_in_river()
    assert_equal(0, @river.fish_in_river())
  end

  def test_add_fish_to_river
    @river.add_to_fish_stock(@fish1)
    assert_equal(1, @river.fish_in_river)
  end

    def test_remove_fish()
      @river.add_to_fish_stock(@fish1)
      @river.remove_fish()
      assert_equal(0, @river.fish_in_river())
    end

  end
