
class River

  attr_reader :riv_name, :fish_stock

    def initialize(riv_name)
   # def intializie(riv_name, fish_num)
      @riv_name = riv_name
      @fish_stock = []
      #@fish_num = fish_num for fish count

    end

    def fish_in_river()       #array of fish in river (not sure this is required)
      return @fish_stock.length()
    end

    def add_to_fish_stock(fish)
      @fish_stock << fish
    end

    def remove_fish()
      @fish_stock.shift()   #explore other options
    end
end
