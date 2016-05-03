require('minitest/autorun')
require('minitest/rg')
require('colorize')
require_relative('../fish')
require_relative('../bear')
require_relative('../river')

class TestBearFishRiver < MiniTest::Test

    def setup
        @river = River.new(3)
        @bear = Bear.new("Colin", "black")
        @other_bear = Bear.new("James", "polar")
    end

    def test_bear_name()
        test_result = @bear.name
        expected_result = "Colin"
        assert_equal(expected_result, test_result)
    end

    def test_other_bear_name()
        test_result = @other_bear.name
        expected_result = "James"
        assert_equal(expected_result, test_result)
    end

    def test_fish_name()
        test_result = @river.get_next_sacrifice().name
        expected_result = "Balthazar"
        assert_equal(expected_result, test_result)
    end

    def test_river_fish()
        test_result = @river.get_fish_population()
        expected_result = 3
        assert_equal(expected_result, test_result)
    end

    def test_bear_roar()
        test_result = @bear.roar()
        expected_result = "ROOAAAARR!!!"
        assert_equal(expected_result,test_result)
    end

    def test_bear_roar()
        test_result = @other_bear.roar()
        expected_result = "Brrrrr....."
        assert_equal(expected_result,test_result)
    end

    def test_bear_eat()
        expected_result = @bear.fish_eaten() + 1
        @bear.eat(@river.get_next_sacrifice())
        test_result = @bear.fish_eaten()
        assert_equal(expected_result, test_result)
    end
    def test_fish_moving_to_bear()
        num_of_fish_in_river_before_bear = @river.get_fish_population()
        the_fish = @river.get_next_sacrifice()
        @bear.eat(the_fish)
        expected_result = true
        test_result = @bear.in_tummy?(the_fish)
        assert_equal(expected_result, test_result)
        assert_equal((num_of_fish_in_river_before_bear - 1), @river.get_fish_population())
    end
    def test_bear_eat_all_fish
        for x in (0..4)
            @bear.eat(@river.get_next_sacrifice())
        end # additional river sacrifice will be nil so bear won't eat
        test_result = @bear.fish_eaten
        expected_result = 3
        assert_equal(expected_result, test_result)
    end

end
