module Lexicon
	def convert_number(object)
		begin
			return Integer(object)
		rescue
			return nil
		end
	end
	
	def Lexicon.scan(string)
		words = [['direction','north'],
		['direction','south'],
		['direction','east'],
		['verb','go'],
		['verb','kill'],
		['verb','eat'],
		['stop','the'],
		['stop','in'],
		['stop','of'],
		['noun','princess'],
		['noun','bear']]
		ary=[]
		string = string.split
		
		string.each do |a|
			if convert_number(string).nil?
				words.each do |b|
					if b[1] == a
						ary.push(b)
					end
				end
			else
				ary = [['number',convert_number(string)]]
			end
		end
		
	return ary
	end
end