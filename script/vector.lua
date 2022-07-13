Vector = {x = 0, y = 0, z = 0}

newVector = function(x, y, z)
    local newVector = {}

    newVector.x = x
    newVector.y = y
    newVector.z = z

    return newVector
end

main = function()
    myVector = newVector(1, 2, 3)

    print("x = ", myVector.x)
    print("y = ", myVector.y)
    print("z = ", myVector.z)
end
