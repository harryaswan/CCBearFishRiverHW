require('minitest/autorun')
require('minitest/rg')
require('colorize')
require_relative('../fish')
require_relative('../bear')
require_relative('../river')

class TestBankAccount < MiniTest::Test

    def setup
        @river = River.new(10)
        @bear = Bear.new("Yogi", "Black")

        puts @river.inspect
        puts @bear.inspect
    end

    end

    def test_thing
        assert_equal(1, 1)
    end

end
