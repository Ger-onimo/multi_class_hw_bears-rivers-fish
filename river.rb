
class River

  attr_reader :riv_name, :fish_num

    def initialize(riv_name)
      @riv_name = riv_name
      @fish_num = []

    end

    def fish_in_river()
      return @fish_num.length()
    end

    def fish_stock(fish)
      @fish_num << fish
    end


end
