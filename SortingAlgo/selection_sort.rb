module SortingAlgo
  class SelectionSort
    def self.sort(arr)
      n = arr.length

      (n-1).times do |i|
        index_min = i

        (i+1).upto(n-1) do |j|
          index_min = j if arr[j] < arr[index_min]
        end

        arr[i], arr[index_min] = arr[index_min], arr[i] if index_min != 1
      end

      arr
    end
  end
end