mergeSort = function(myItems, p, r)
	if p < r then
		local q = math.floor((p + r)/2)

		mergeSort(myItems, p, q)
		mergeSort(myItems, q + 1, r)

		merge(myItems, p, q, r)
	end
end

merge = function(myItems, p, q, r)
	local n1 = q - p + 1
	local n2 = r - q
	local left = {}
	local right = {}

	for i = 1, n1 do
		left[i] = myItems[p + i - 1]
	end

	for i = 1, n2 do
		right[i] = myItems[q + i]
	end

	left[n1 + 1] = math.huge
	right[n2 + 1] = math.huge

	local i = 1
	local j = 1

	for k = p, r do
		if left[i] <= right[j] then
			myItems[k] = left[i]
			i = i + 1
		else
			myItems[k] = right[j]
			j = j + 1
		end
	end
end

main = function()
    local myItems = {
        2.54, 5.85, 4.18, 0.54, 4.36, 2.33,
        6.36, 3.32, 7.65, 4.56, 9.56, 1.24
    }

    local size = #myItems

    mergeSort(myItems, 1, size)

    for i = 1, size do
		print(myItems[i])
	end
end
