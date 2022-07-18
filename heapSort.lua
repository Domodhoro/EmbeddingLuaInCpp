heapSort = function(myItems, size)
    local aux = {
        heapSize = size; items = myItems, len = size
    }

    buildMaxHeap(aux)

    for i = size, 2, -1 do
        local temp = myItems[1]

        myItems[1] = myItems[i]
        myItems[i] = temp

        aux.heapSize = aux.heapSize - 1
        maxHeap(aux, 1)
    end
end

maxHeap = function(myItems, i)
    local l = 2 * i
    local r = 2 * i + 1
    local max

    if l <= myItems.heapSize and myItems.items[l] > myItems.items[i] then
        max = l
    else
        max = i
    end

    if r <= myItems.heapSize and myItems.items[r] > myItems.items[max] then
        max = r
    end

    if max ~= i then
        local temp = myItems.items[i]

        myItems.items[i] = myItems.items[max]
        myItems.items[max] = temp

        maxHeap(myItems, max)
    end
end

buildMaxHeap = function(myItems)
    for i = math.floor(myItems.len / 2), 1, -1 do
        maxHeap(myItems, i)
    end
end

main = function()
    local myItems = {
        2.54, 5.85, 4.18, 0.54, 4.36, 2.33,
        6.36, 3.32, 7.65, 4.56, 9.56, 1.24
    }

    local size = #myItems

    heapSort(myItems, size)

    for i = 1, size do
        print(myItems[i])
    end
end
