def bubble_sort(arr)

    ctr = 0
    indx = 1
    swap = true
    sort_len = arr.length
    while ctr < arr.length - 1 && swap === true
        swap = false
        while indx < sort_len
            if arr[ctr] > arr[indx]
                temp = arr[ctr]
                arr[ctr] = arr[indx]
                arr[indx] = temp
                swap = true
            end
            indx += 1
        end
        ctr += 1
        indx = ctr + 1
    end
    return arr
end

print bubble_sort([4,3,78,2,0,5,88,9,6,10,13,16,71,93,43,19,28,11,14])
puts
