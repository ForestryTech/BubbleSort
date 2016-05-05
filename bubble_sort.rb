def bubble_sort(arr)

    ctr = 0
    indx = 0
    swap = true
    sort_len = arr.length
    while swap === true
        swap = false
        while indx < sort_len - 1
            #print "indx=#{indx} arr[indx]=#{arr[indx]} -- arr[indx + 1]=#{arr[indx + 1]}\n"
            if arr[indx] > arr[indx + 1]
                temp = arr[indx]
                arr[indx] = arr[indx + 1]
                arr[indx + 1] = temp
                swap = true
            end
            indx += 1
        end
        indx = 0
        sort_len -= 1
    end
    return arr
end

def bubble_sort_by(arr)
    ctr = 0
    indx = 0
    swap = true
    sort_len = arr.length
    
    while swap === true
        swap = false
        while indx < sort_len - 1
            if yield(arr[indx], arr[indx + 1]) < 0
                temp = arr[indx]
                arr[indx] = arr[indx + 1]
                arr[indx + 1] = temp
                swap = true
            end
            indx += 1
        end
        indx = 0
        sort_len -= 1
    end
    return arr
end
print bubble_sort([4,3,78,2,0,5,88,9,6,10,13,16,71,93,43,19,28,11,14])
puts
print bubble_sort_by(["hi", "hello", "hey"]) { |left, right| right.length - left.length}
puts