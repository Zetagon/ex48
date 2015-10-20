require 'ex48/Lexicon.rb'
require 'minitest/autorun'

class TestNAME < MiniTest::Unit::TestCase
	def test_directions()
		assert_equal(Lexicon.scan("north"), [['direction', 'north']])
		result = Lexicon.scan("north south east")

		assert_equal(result, [['direction', 'north'],
           ['direction', 'south'],
           ['direction', 'east']])
	end
	
	def test_verbs()
		assert_equal(Lexicon.scan("go"), [['verb', 'go']])
		result = Lexicon.scan("go kill eat")
		assert_equal(result, [['verb', 'go'],
			['verb','kill'],
			['verb','eat']])
	end
	
	def test_nouns()
		assert_equal(Lexicon.scan("bear"),[['noun','bear']])
		result = Lexicon.scan("bear princess")
		assert_equal(result,[['noun','bear'],
			['noun','princess']])
	end
	
	def test_numbers()
		assert_equal(Lexicon.scan("1234"), [['number',1234]])
		result = Lexicon.scan("2 91234")
		assert_equal(result, [['number',2],
			['number',91234]])
	end
	
	def test_errors()
		assert_equal(Lexicon.scan("ASDFADFASDF"),[['error',"ASDFADFASDF"]])
		result = Lexicon.scan("BEAR IAS princess")
		assert_equal(result,[['noun','bear'],
			['error','IAS'],
			['noun','princess']])
	end
end