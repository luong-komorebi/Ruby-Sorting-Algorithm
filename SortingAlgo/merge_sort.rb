module SortingAlgo
  class MergeSort
    def self.sort(arr)
      if arr.length <= 1
        arr
      else
        mid = (arr.length/2).floor
        left = sort(arr[0..mid-1])
        right = sort(arr[mid..arr.length])
        merge(left, right)
      end
    end

    private

    def self.merge(left, right)
      if left.empty?
        right
      elsif right.empty?
        left
      elsif left[0] < right[0]
        [left[0]] + merge(left[1..left.length], right)
      else
        [right[0]] + merge(left, right[1..right.length])
      end
    end
  end
end