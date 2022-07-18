gnomeSort = function(myItems, size)
    local i = 2
    local j = 3

    while i <= size do
        if myItems[i - 1] <= myItems[i] then
            i = j
            j = j + 1
        else
            myItems[i - 1], myItems[i] = myItems[i], myItems[i - 1]
            i = i - 1
            if i == 1 then
                i = j
                j = j + 1
            end
        end
    end
end

main = function()
    local myItems = {
        2.54, 5.85, 4.18, 0.54, 4.36, 2.33,
        6.36, 3.32, 7.65, 4.56, 9.56, 1.24
    }

    local size = #myItems

    gnomeSort(myItems, size)

    for i = 1, size do
        print(myItems[i])
    end
end
