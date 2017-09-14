# O(n^2) solution
def stock_picker(array)
	profit = 0
	days_index = []
	array.each_with_index do |n, index|
		m = index
		while m < array.length
			result = array[m] - n
			if result >= profit
				profit = result
				days_index = [index, m]
			end
			m += 1
		end
	end
	days_index
end

# O(n) solution
def stock_picker2(my_array)
	j = 0
	max = my_array[1] - my_array[0]
	table = [0, 1]
	for i in (1...(my_array).length) do
		if my_array[i] <= my_array[j]
			j = i
		end
		if my_array[i] - my_array[j] > max
			max =  my_array[i] - my_array[j]
			table = [].push(j,i)
		end

	end
	return table
end


p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([17,16,16])
p stock_picker([17])
p stock_picker([16,17,17])
p stock_picker([17,16,17,18])

p stock_picker2([17,3,6,9,15,8,6,1,10])
p stock_picker2([17,16,16])
p stock_picker2([16,17,17])
p stock_picker2([17,16,17,18])