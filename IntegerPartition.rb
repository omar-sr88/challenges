
class IntegerPartition

	@@particoes = Array.new

	@@ident = 0

	def integer_partition(n)
		parcial = Array.new
		partition(n,n, parcial);

	end

	def partition (target, max, parcial)
		@@ident += 1
		# if i cant "reduce" the numerbs in the list, we have a solution
		if (target == 0) 
	            atual = Array.new;
	            for i in 0...parcial.length 
	                atual.push(parcial[i]);
	            end
	            @@ident.times { printf "\t"} 
        		puts "Result Added to solution #{parcial}"

	            @@particoes.push(atual);
	    end
	    
        i = [max, target].min
        while i >= 1
        	@@ident.times { printf "\t"} 
        	puts "Current max = #{max}, current target #{target}"

        	parcial.push(i);
        	@@ident.times { printf "\t"} 
        	puts "Current i = #{i}"
        	@@ident.times { printf "\t"} 
        	puts "Added #{i} to #{parcial}"
        	@@ident.times { printf "\t"} 
        	printf "Calling recursion with #{target - i} and #{i}"
        	puts
        	# The call to target - 1, is the attemp reduce 
        	# by one the number at hand
        	# When it hits 0, we know we got a solution
        	# The second param tells how many tries we still have
			partition(target - i, i, parcial);

			@@ident.times { printf "\t"} 
        	puts "Returned from previous call #{target - i} and #{i}"

			parcial.delete_at(parcial.length - 1);
			@@ident.times { printf "\t"} 
        	puts "i reduced by 1"
        	i-=1
        end
			@@ident -= 1
	end

	def show
		@@particoes.each do |line|
			print line
			puts
		end
	end

end

a = IntegerPartition.new

a.integer_partition(5)
#a.show