require 'ex48/lexicon.rb'
require 'minitest/autorun'

class TestName < Minitest::Unit::TestCase
	def test_directions()
		lex = Lexicon.new()
		assert_equal(lex.scan("north"),[['direction','north']])
		
		result = lex.scan("norh south east")
		assert_equal(result, [['direction','north'],
		['direction','south'],
		['direction','east']])
	end
end