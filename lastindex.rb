def last_index(str, char)
	i = 0
  	lst_dex = 0
  
  	while i < str.length 
      if str.chars[i] == char
        lst_dex = i
      end
      i += 1
    end
  return lst_dex
end