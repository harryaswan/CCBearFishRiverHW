class Bear

    attr_accessor(:name, :type)

    def initialize(name, type)
        @name = name
        @type = type
        @tummy = []
    end

    def eat(fish)
        @tummy << fish if fish != nil
    end

    def fish_eaten()
        return @tummy.length
    end

    def in_tummy?(fish_name)
        for f in @tummy
            return true if f == fish_name
        end
        return false
    end

    def roar()
        return "ROOAAAARR!!!"
    end

end
