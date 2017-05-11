random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]
def linear_search(nmr,array)
	a = []
	i = 0
until i == array.size
	i += 1
	if array[i] == nmr
	  a << i
	else
		nil
	end
end
a.join
end
p linear_search(20, random_numbers)
p linear_search(29, random_numbers)
arr = "entretenerse".split('')
def global_linear_search(letra,array)
	a = []
	i = 0
	until i == array.size
	i += 1
	if array[i] == letra
	  a << i
	else
		nil
	end
end
a
end
p global_linear_search("e", arr)
