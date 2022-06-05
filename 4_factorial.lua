function factorial(n)
    if n == 0 then
        return 1
    else
        return n * factorial(n - 1)
    end
end

function main()
    for i = 0, 10 do
        print(factorial(i))
    end
end
