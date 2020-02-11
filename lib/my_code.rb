def map(array)
  new_array = []
  index = 0 
  while index < array.length 
    base = array[index]
    new_array.push(yield(base))
  index += 1 
  end 
return new_array    
end 

def reduce(array, sv = nil)
  if sv
    sum = sv 
    index = 0
  else 
    sum = array[0]
    index = 1 
  end 
    
  while index < array.length
    sum = yield(sum,array[index])
    index += 1 
  end 
 sum    
end 
