class Bear

    attr_accessor(:name, :type)

    def initialize(name, type)
        @name = name
        @type = type
        @tummy = []
    end

    def eat(fish)
        @tummy << fish
    end

    def roar()
        return "ROOAAAARR!!!"
    end
    
end
