def binary_gap( n )
  remainder,max_streak = 0,streak=0
  while n != 0
  	remainder = n % 2
  	if remainder == 0
  	  streak+=1
  	  max_streak = streak if streak > max_streak
  	else
  	  streak = 0
  	end
  	n = (n/2).floor
  end

  puts max_streak
end


binary_gap(8)
binary_gap(529)
binary_gap(2147483648)