def comprimir(string) 
  char_atual = ''
  contagem_atual = 1
  retorno = ''
  len = string.size 	

  char_atual = string[0]
  for i in 1..len do
    if char_atual == string[i]
      contagem_atual += 1  
    #imprimir 
    elsif contagem_atual == 1
      retorno << char_atual
      contagem_atual = 1
      char_atual = string[i]
    else
       retorno << char_atual << contagem_atual.to_s
       #reseta 
       contagem_atual = 1
       char_atual = string[i]
    end
  end
  puts retorno
end

def clock_single(grau)
	
  
end

def clock_pre_list(grau) 
  grau = grau.to_f
  list = {}
  list_h = {}
  hour_step = 0
  for minutos in 0..360 do
  	hour_step = (minutos / 60)
  	graus_m = (minutos * 6.00) % 360
  	graus_h = (minutos/2.00)


  	if graus_h >= graus_m
  		grad_val = (graus_h - graus_m)
  	elsif
  		grad_val = (graus_m - graus_h)
  	end

  	list[(grad_val)] = minutos
  	list_h[(grad_val)] = hour_step

  	puts "#{minutos}   "+  (grad_val).to_s + " Horas #{hour_step}"
  	#list.push((graus_m - graus_h) % 180)
  end 

 
  puts list[grau]

  result = ''
  minutos =  list[grau]
  puts minutos
  horas = minutos.to_i / 60
  minutos = minutos % 60
  if(horas < 10)
  	result << "0" + horas.to_s
  else
  	result horas.to_s
  end
  result << ":"
  if(minutos < 10)
  	result << "0" + minutos.to_s
  else
  	result << minutos.to_s
  end

  puts result
  result = ''

  minutos = 12*60 - list[grau]
  horas = minutos.to_i / 60
  minutos = minutos % 60
  if(horas < 10)
  	result << "0" + horas.to_s
  else
  	result << horas.to_s
  end
  result << ":"
  if(minutos < 10)
  	result << "0" + minutos.to_s
  else
  	result << minutos.to_s
  end
  puts result 
end


def diferenca
  n = gets.to_i

  list = []
  list = gets.split(" ").map(&:to_i)
  list.sort!
  
  #caso nao bem documentado, retornando unico elemento da lista
  if n == 1
  	list[0] 
  end

  pairs = []
  first = list[0]
  current = list[1]
  diff = current - first
  pairs.push([first, current])	

   for i in 2...n do
   	if (list[i] - current) < diff
   		diff = list[i] - current
   		pairs = []
   		pairs.push([current, list[i]])
   	elsif (list[i] - current) == diff
   		pairs.push([current, list[i]])	
   	else
   	end
   	current = list[i]
   end
   puts pairs.join(" ")
end

clock_pre_list(181)