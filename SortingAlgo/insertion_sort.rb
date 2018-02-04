module SortingAlgo
  class InsertionSort
    def self.sort(arr)
      n = arr.length
      (n).times do |i|
        while i > 0
          if arr[i-1] > arr[i]
            arr[i-1], arr[i] = arr[i], arr[i-1]
          else
            break
          end
          i-=1
        end
      end
      arr
    end
  end
end