
class Bear

  attr_reader :bear_name, :type

    def initialize(bear_name, type)
      @bear_name = bear_name
      @type = type
      @stomach_contents = []
    end

    def stomach_count()
      return @stomach_contents.length()
    end

    def take_fish_from_river(fish)
      @stomach << fish
    end



end
