class ParserErrror < Exception
end

class Sentence
	def initialize(subject, verb, obj)
	@subject = subject[1]
	@verb = verb[1]
	@object = obj[1]
	end
	
	def peek(word_list)
		if word_list
			word = word_list[0]
			return word[0]
		else
			return nil
		end
	end
	
	def match(word_list, expecting)
		if word_list
			word = word_list.shift
			if word[0] == expecting
				return word
			else
				return nil
			end
		else
			return nil
		end
	end
	
	def skip(word_list, word_type)
		while peek(word_list) == word_type
			match(word_list,word_type)
		end
	end
	attr_reader :subject
	attr_reader :verb
	attr_reader :object
end
