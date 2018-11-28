
class Bear

  attr_reader :bear_name, :type, :stomach_count
  attr_writer :stomach

    def initialize(bear_name, type)
      @bear_name = bear_name
      @type = type
      @stomach_contents = [] #passengers
    end

    def stomach_count()
      return @stomach_contents.length()
    end

    def take_fish(river)
      for fish in river.fish_stock()
         @stomach_contents << fish
       end
       river.remove_fish()
    end

end
