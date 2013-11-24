require 'test/unit'
require '../src/ModeB.rb'

class TC_ModeB < Test::Unit::TestCase
    def setup
        @obj = ModeB.new
    end

    def test_run
        assert_equal(@obj.run("X"), "XX")
        assert_equal(@obj.run("L"), "LL")
        assert_equal(@obj.run("R"), "RR")
        assert_equal(@obj.run("XLLRRL"), "XLLRRLLRRLLX")
        assert_equal(@obj.run("LLLRRL"), "LLLRRLLRRLLL")
    end
end
