local Person = {
    name  = "none", age = 0
}

Person.__index = Person

function Person:new()
    return setmetatable({}, Person)
end

function Person:new(m_name, m_age)
    return setmetatable({name = m_name, age = m_age}, Person)
end

function main()
    local person = Person:new("João", 12)

    print("Name: ", person.name, "\nAge: ", person.age)
end
