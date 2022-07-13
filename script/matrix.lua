printMatrix = function(matrix)
    for y, row in ipairs(matrix) do
        for x, value in ipairs(row) do
            print(matrix[y][x])
        end
    end
end

main = function()
    local myMatrix = {
        {'a1', 'a2', 'a3'},
        {'b1', 'b2', 'b3'},
        {'c1', 'c2', 'c3'}
    }

    printMatrix(myMatrix)
end