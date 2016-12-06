def fibo_iteractive(n)
  puts 0 if n == 0
    curr = 1 
    past = 0

    for i in 1...n
      temp = curr
      curr = curr + past
      past = temp
    end
    puts curr

end

#dp
def fibo_memory(n,memory_array = [0,1])
  puts memory_array[n-1] if n == 0

  if !memory_array[n-1]
    fibo_memory(n,memory_array.push(memory_array[-1]+memory_array[-2]))
  else
    puts memory_array[n-1]
  end

end

#increment the param, no need for whole list memory
def fibo_fast(last, current, n)
  n == 0 ? last : fibo_fast(current, last + current, n - 1)
end

def fibo(n)
  fibo_fast(0, 1, n)
end


def printFibo(size)
  x1,x2 = 0, 1
  0.upto(size){puts x1;x1+=x2; x1,x2= x2,x1} 
end




puts fibo(6)
printFibo(5)
# fibo_memory(1500)

# fibo_interactive(1)
# fibo_interactive(2)
# fibo_interactive(3)
# fibo_interactive(4)
# fibo_interactive(5)
# fibo_interactive(6)
# printFibo(10)