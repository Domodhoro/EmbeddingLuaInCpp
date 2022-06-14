function printTable(node)
    for index, data in ipairs(node) do
        print(index)

        for key, value in pairs(data) do
            print(key, ":", value)
        end

        print("\n")
    end
end

function main()
    local people = {
        {
            name = "James",
            age = 12
        },
        {
            name = "Robert",
            age = 13
        },
        {
            name = "John",
            age = 14
        },
        {
            name = "Mary",
            age = 15
        }
    }

    printTable(people)
end
