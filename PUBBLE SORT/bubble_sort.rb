def bubble_sort(arr)
    times = arr.length * arr.length
    while times != 0 do
        arr.each_with_index do |num,index|
            temp = 0
            if arr[index + 1] != nil
                if num > arr[index + 1]
                    temp = num
                    arr[index] = arr[index + 1]
                    arr[index + 1] = temp
                end
            end
            
        end
        times -= 1
    end
    arr
end

p bubble_sort([4,3,78,2,0,2])
