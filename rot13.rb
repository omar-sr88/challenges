def rot13(secret_messages)
	#kudos to https://gist.github.com/rwoeber/274126
	secret_messages.map { |m| 
		m.tr 'A-Za-z','N-ZA-Mn-za-m'
	}
end


#test github
def rot
	entries = gets.split(" ")
	entries.map!{|x| x.to_i}
	array = gets.split(" ")
	answer = []
	entries[2].times do 
	    q = gets.to_i
	    answer << array[q - entries[1] % entries[0]]
	end
	puts answer
	
end

rot
