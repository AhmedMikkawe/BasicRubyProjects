def stock_picker(arr)
    min_price = arr[0]
    min_index = 0
    profit = 0
    days = [0, 0]
    arr.each_with_index do |price,index|
        if price < min_price
            min_price = price
            min_index = index
        end
        if price - min_price > profit
            profit = price - min_price
            days = [min_index,index]
        end
    end
    days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
