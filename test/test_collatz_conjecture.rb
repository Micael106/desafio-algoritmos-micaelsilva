
require 'test/unit'
require_relative '../src/collatz_conjecture.rb'

class TestCollatzConjecture < Test::Unit::TestCase
    def test_resolve
        # Checando se o parâmetro é válido
        assert_equal(true, CollatzConjecture.resolve)
        assert_equal(false, CollatzConjecture.resolve(-6))
        assert_equal(false, CollatzConjecture.resolve(150.5))
    end
end