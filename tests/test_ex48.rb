require 'ex48/lexicon.rb'
require 'minitest/autorun'

class TestName < Minitest::Unit::TestCase
	def test_directions()
		assert_equal(Lexicon.scan("north"),[['direction','north']])
		
		result = Lexicon.scan("north south east")
		assert_equal(result, [['direction','north'],
		['direction','south'],
		['direction','east']])
	end
end