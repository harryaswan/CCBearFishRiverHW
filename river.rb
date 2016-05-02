class River
    attr_accessor(:fishes)

    def initialize(num_of_fish)
        @fishes = []
        for f in 0...num_of_fish
            @fishes << Fish.new(pickRandomFishName(f))
        end
    end

    def get_next_sacrifice()
        # return nil if @fishes.empty?()
        return @fishes.pop
    end

    def get_fish_population()
        return @fishes.length
    end

    def pickRandomFishName(findex = nil)
        fish_names = ["Percy", "Nemo", "Balthazar", "Flippers", "Comet", "Bubbles", "Sunny", "Shadow", "Flash", "McLovin", "Sushi", "Ariel", "Blue", "Spike", "Dory", "Spot", "Billy", "Bob", "Bill", "Cap'n Jack"]

        return fish_names[findex] if findex
        return fish_names[Random.new().rand(0...fish_names.length)]
    end

end
