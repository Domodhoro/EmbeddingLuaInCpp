function partition(myItems, left, right, pivot)
	local pivotValue = myItems[pivot]

	myItems[pivot],
	myItems[right] = myItems[right],
	myItems[pivot]

	local aux = left

	for i = left, right - 1 do
    	if myItems[i] <= pivotValue then
	        myItems[i],
	        myItems[aux] = myItems[aux],
	        myItems[i]

	        aux = aux + 1
		end

		myItems[aux],
		myItems[right] = myItems[right],
		myItems[aux]
    end

    return aux
end

function quickSort(myItems, left, right)
	if right > left then
	    local newPivot = partition(myItems, left, right, left)

	    quickSort(myItems, left, newPivot - 1)
	    quickSort(myItems, newPivot + 1, right)
	end
end

function main()
    local myItems = {
        2.54, 5.85, 4.18, 0.54, 4.36, 2.33,
        6.36, 3.32, 7.65, 4.56, 9.56, 1.24
    }

    size = #myItems

    quickSort(myItems, 1, size)

    for i = 1, size do
        print(myItems[i])
    end
end
