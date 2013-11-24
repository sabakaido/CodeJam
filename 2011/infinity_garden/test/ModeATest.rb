require 'test/unit'
require '../src/ModeA.rb'

class TC_ModeA < Test::Unit::TestCase
    def setup
        @obj = ModeA.new
    end

    def test_run
        assert_equal(@obj.run("X"), "LR")
        assert_equal(@obj.run("L"), "XX")
        assert_equal(@obj.run("R"), "RL")
        assert_equal(@obj.run("XLLRRL"), "LLLRRLRRRLLR")
        assert_equal(@obj.run("LLLRRL"), "XLLRRLXRRLLR")
    end
end
