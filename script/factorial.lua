factorial = function(n)
    if n == 0 then
        return 1
    else
        return n * factorial(n - 1)
    end
end

main = function()
    for i = 0, 10 do
        print(i, "! = ", factorial(i))
    end
end
