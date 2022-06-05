function main()
    local n = 1000
    local num = 0
	local nextNum = 1
	local aux = 0

	while (num <= n) do
        print(num)

		aux = nextNum
		nextNum = num + nextNum
		num = aux
	end
end
