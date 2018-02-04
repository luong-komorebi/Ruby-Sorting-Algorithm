module SortingAlgo
  class QuickSort
    def self.sort(arr)
      return arr if arr.length <= 1
      pivot = arr.delete_at(rand(arr.length))

      left = Array.new
      right = Array.new

      arr.each do |i|
        if i <= pivot
          left << i
        else
          right << i
        end
      end

      return [*sort(left), pivot, *sort(right)]
    end
  end
end