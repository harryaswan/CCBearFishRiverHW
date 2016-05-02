class River
    attr_accessor(:fishes)

    def initialize(num_of_fish)
        @fishes = []
        for f in 0..num_of_fish
            @fishes << Fish.new(pickRandomFishName())
        end
    end


    def pickRandomFishName()
        fish_names = ["Nemo", "Percy", "Flippers", "Comet", "Bubbles", "Sunny", "Shadow", "Flash", "McLovin", "Sushi", "Ariel", "Blue", "Spike", "Dory", "Spot", "Balthazar", "Billy", "Bob", "Bill", "Cap'n Jack"]
        #rnd = Random.new()
        return fish_names[Random.new().rand(0..fish_names.length)
    end

end
