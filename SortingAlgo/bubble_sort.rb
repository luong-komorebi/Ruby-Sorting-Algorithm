module SortingAlgo
  class BubbleSort
    def self.sort(arr)
      n = arr.length
      loop do
        swapped = false

        (n-1).times do |i|
          if (arr[i] > arr[i+1])
            arr[i], arr[i+1] = arr[i+1], arr[i]
            swapped = true
          end
        end

        break unless swapped
      end

      arr
    end
  end
end