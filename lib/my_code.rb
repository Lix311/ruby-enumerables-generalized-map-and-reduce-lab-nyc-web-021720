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
  else 
    sum = array[0]
  end 
    
  index = 0
  while index < array.length
    sum = yield(sum,array[index])
    index += 1 
  end 
 sum    
end 
