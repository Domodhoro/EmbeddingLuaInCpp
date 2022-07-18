cocktailSort = function(myItems, size)
    local swap
    repeat
    swap = false

    for i = 1, size - 1 do
        if myItems[i] > myItems[i + 1] then
            myItems[i], myItems[i + 1] = myItems[i + 1], myItems[i]

            swap = true
        end
    end

    if swap == false then
        break
	end

    for i = size - 1, 1, -1 do
        if myItems[i] > myItems[i + 1] then
            myItems[i], myItems[i + 1] = myItems[i + 1] , myItems[i]

            swap = true
        end
    end

    until swap == false
end

main = function()
    local myItems = {
        2.54, 5.85, 4.18, 0.54, 4.36, 2.33,
        6.36, 3.32, 7.65, 4.56, 9.56, 1.24
    }

    local size = #myItems

    cocktailSort(myItems, size)

    for i = 1, size do
        print(myItems[i])
    end
end
