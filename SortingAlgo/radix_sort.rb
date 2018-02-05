module SortingAlgo
  class RadixSort
    def self.sort(arr)
      temp = []
      res = []

      arr.each do |i|
        if temp[i] == nil
          temp[i] = arr[i]
        else
          temp[i] = temp[i] + 1
        end
      end

      temp.each_with_index do |val, j|
        if val != nil
          val.times do
            res << j
          end
        end
      end

      res
    end
  end
end