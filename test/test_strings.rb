require 'test/unit'
require_relative '../src/strings.rb'

class TestStrings < Test::Unit::TestCase
    def test_resolve
        assert_equal([], Strings.resolve('Gol'))
        assert_equal(['ooo'], Strings.resolve('Goool'))
        assert_equal(['ooooo', 'aaaaa'], Strings.resolve('Gooooolaaaaaçooo'))
        
        words = File.readlines('./words.txt')
        assert_equal(['ooo', 'ggg'].sort, Strings.resolve(words[0]).sort)
        assert_equal(['tt', 'cc'].sort, Strings.resolve(words[1]).sort)
        assert_equal(['mm', 'cc', 'nn'].sort, Strings.resolve(words[2]).sort)
    end
end