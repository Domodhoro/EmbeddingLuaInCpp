function bubbleSort(items, size)
    local temp = 0

    for i = 1, size - 1 do
        for j = 1, size - i do
            if items[j] > items[j + 1] then
                temp = items[j]
                items[j] = items[j + 1]
                items[j + 1] = temp
            end
        end
    end
end

function main()
    local myItems = {
        2.54, 5.85, 4.18, 0.54, 4.36, 6.36, 3.32, 7.65, 4.56, 9.56, 1.24
    }

    local size = #myItems

    bubbleSort(myItems, size)

    for i = 1, size do
        print(myItems[i])
    end
end
