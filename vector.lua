Vector = {x = 0, y = 0, z = 0}

function Vector:new(x, y, z)
    local newVector = {}

    newVector.x = x
    newVector.y = y
    newVector.z = z

    return newVector
end

function main()
    myVector = Vector:new(1, 2, 3)

    print("x = ", myVector.x)
    print("y = ", myVector.y)
    print("z = ", myVector.z)
end
