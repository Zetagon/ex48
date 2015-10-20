class Lexicon
	def scan(string)
		words = [['direction','north'],
		['direction','south'],
		['direction','east']]
		ary=[]
		string = string.split
		
		string.each do |x|
			words.each do |a|
				a.each do |b,c|
					if x == c
					return a
					end
				end
			end
		end
		

	end
end

lex = Lexicon.new
lex.scan('north')