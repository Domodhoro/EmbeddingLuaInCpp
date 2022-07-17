insertionSort = function(myItems, size)
    for j = 2, size do
        local key = myItems[j]
        local i = j - 1

        while i > 0 and myItems[i] > key do
            myItems[i + 1] = myItems[i]
            i = i - 1
        end

        myItems[i + 1] = key
    end
end

main = function()
    local myItems = {
        2.54, 5.85, 4.18, 0.54, 4.36, 2.33,
        6.36, 3.32, 7.65, 4.56, 9.56, 1.24
    }

    local size = #myItems

    insertionSort(myItems, size)

    for i = 1, size do
        print(myItems[i])
    end
end
