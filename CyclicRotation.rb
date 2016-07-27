def cyclic_rotation(a,k)
  size = a.length
  start = size-k
  b = a.slice!(start,k)
  print (b+a).join(" ")
end

cyclic_rotation([2,3,4,5,6,7],3)