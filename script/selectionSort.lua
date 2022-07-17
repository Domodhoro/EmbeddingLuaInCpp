selectionSort = function(myItems, size)
    for n = 1, size - 1 do
        local index = n

        for i = n + 1, size do
            if myItems[i] < myItems[index] then
                index = i
            end
        end

        myItems[n], myItems[index] = myItems[index], myItems[n]
    end
end

main = function()
    local myItems = {
        2.54, 5.85, 4.18, 0.54, 4.36, 2.33,
        6.36, 3.32, 7.65, 4.56, 9.56, 1.24
    }

    local size = #myItems

    selectionSort(myItems, size)

    for i = 1, size do
        print(myItems[i])
    end
end
