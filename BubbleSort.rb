# By josh arber

=begin
    Bubble Sort
    it's bubble sort! but in ruuuubyy :o
=end

bubbly = [4,3,78,2,0,2]

def bubble_sort(array)
    
    for i in 0..array.length-1
        for j in 0..array.length-2-i
            if array[j] > array[j+1]
                temp = array[j+1]
                array[j+1] = array[j]
                array[j] = temp
            end
        end
    end

    array
end

p bubble_sort(bubbly)