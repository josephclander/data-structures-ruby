class SortingAlgorithms 
    def self.bubble(array)
        n = array.length
        # make 2 loops, go through
        n.times do
            for i in 0..n-2 do
                # compare each pair
                if array[i] > array[i+1]
                    # if prev > curr => swap
                    temp = array[i]
                    array[i] = array[i+1]
                    array[i+1] = temp
                end
            end
        end
        array
    end    
    
    def self.selection(array)
        # make first index the minimum
        n = array.length
        # check against all others 
        for i in 0...n do
            min = i
            for j in i+1..n-1 do
                # update if necessary
                if array[j] < array[min]
                    min = j
                end
            end
            # swap elements at end of cycle
            temp = array[i]
            array[i] = array[min]
            array[min] = temp
        end
        array
    end    
    
    def self.insertion(array)
        n = array.length
        # loop array with i to n - 1
        for i in 1...n do
            # loop from 0 to i - 1
            for j in 0...i do
                # compare
                if array[i] < array[j]
                    # swap
                    temp = array[i]
                    array[i] = array[j]
                    array[j] = temp
                end
            end
        end
        array
    end    
end

SortingAlgorithms.insertion([3,1,4,2])