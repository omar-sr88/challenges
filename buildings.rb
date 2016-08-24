def build
n = gets.to_i
heights = gets.split(' ').map(&:to_i)
m = gets.to_i
p = gets.split(' ').map(&:to_i)

sum = 0
last = 1
p.each do |pos|
    cut = pos - 1
    cut.downto(last) do |i|
        cutting_point =  (pos-i) 
        if  heights[i-1] > cutting_point
            sum += heights[i-1] - ( heights[i-1] - cutting_point )
        else
            sum += heights[i-1]
        end
    end
    
    last = pos  
end

#add rest
for i in p.last-1..heights.size-1 do
	sum += heights[i]
end

puts sum
end


def ball

# 2 2
# 4 5 -5 0
# 3 2 7 -2
# 4 8
# 6 5

# Enter your code here. Read input from STDIN. Print output to STDOUT
	first = gets.split(' ').map(&:to_i) 
	lines = first[0]
	q = 2
	ranges = {}
	1.upto(lines) do |i|
	  x1,y1,x2,y2 = gets.split(' ').map(&:to_i)
	  if y1 < y2
	  	exit = x1
        #falls in range
        curr_range = ranges.select {|k,v| k.member?(x1)}.keys.first
        if !curr_range.nil?
        	puts curr_range
          if x2 < curr_range.min
            ranges[x2..curr_range.max] = ranges.delete curr_range
          end

          if x2 > curr_range.max
            ranges[curr_range.max..x2] = ranges.delete curr_range
          end
        else 
	        if x1>x2 
	            ranges[x2..x1] = x1
	        else
	            ranges[x1..x2] = x1
	        end
        end
      else 
      	exit = x2
        curr_range = ranges.select {|k,v| k.member?(x2)}.keys.first
        if !curr_range.nil?
          if x1 < curr_range.min
            ranges[x1..curr_range.max] = ranges.delete curr_range
          end

          if x1 > curr_range.max
          	puts "Right side val #{curr_range}"
            ranges[curr_range.max..x1] = ranges.delete curr_range
          end
        
   		else
	        if x2 > x1
			  ranges[x1..x2] = x2
			else
			  ranges[x2..x1] = x2
			end
		end
      end
	end

	puts ranges
end


# a[4..7] = a.delete 4..5
# #puts a.keys.first.min
# range =  a.select {|k,v| k.member?(2)}.keys.first
# puts range.min
# #b,c,d,e,f = a.split(" ") 
# a = 4
# b = 8
# c = {}
# c[a..b] = "hi"
# c[1] = c.delete 4..8
# puts c
ball