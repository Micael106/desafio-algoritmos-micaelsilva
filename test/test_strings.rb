require 'test/unit'
require_relative '../src/strings.rb'

class TestStrings < Test::Unit::TestCase
    def test_resolve
        assert_nil(Strings.resolve('Gol'))
        assert_equal(["ooo"], Strings.resolve('Goool'))
        assert_equal(["ooooo", "aaaaa"], Strings.resolve('Gooooolaaaaaçooo'))
    end
end