require 'test/unit'
require_relative '../src/collatz_conjecture.rb'

class TestCollatzConjecture < Test::Unit::TestCase
    def test_resolve
        # Checando se o parâmetro é válido
        assert_equal(nil, CollatzConjecture.resolve(-6))
        assert_equal(nil, CollatzConjecture.resolve(150.5))
        # Checando se encontrou o maior valor para max = 10
        assert_equal([9, 19], CollatzConjecture.resolve(10))
    end
end