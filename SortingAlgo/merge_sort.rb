require 'active_support/all'

module SortingAlgo
  class MergeSort
    def self.sort(a)
      return a unless a.size > 1
  
      # first groups are like [[10], [9]]...
      merge_size = 2
      
      # loop until merge_size > array.size
      # you can also find the nearst power of 2, for 10 thats 16
      # that's (log(a.size) / log(2))**2
      loop do
        offset = 0
        a.in_groups_of(merge_size) do |sub_array|
          subs = sub_array.in_groups_of(merge_size / 2)
          sub_array.size.times do |i|
            next if i+offset >= a.size
            
            # after the sub elemnts are shifted off, sub arrays might be empty
            # or have nil elements
            if (subs[0].empty? || subs[0].first.nil?)
              a[i+offset] = subs[1].shift; next
            end
            if (subs[1].empty? || subs[1].first.nil?)
              a[i+offset] = subs[0].shift; next
            end
            
            # set a[i+offset] to the lesser of the first elements of the sub arrays
            # shift that off the sub array
            a[i+offset] = (subs[0].first < subs[1].first) ? subs[0].shift : subs[1].shift
          end
          offset += sub_array.size
        end
        break if merge_size > a.size
        merge_size *= 2
      end
      a
    end





    # this is the old recursive one
    # def self.sort(arr)
    #   if arr.length <= 1
    #     arr
    #   else
    #     mid = (arr.length/2).floor
    #     left = sort(arr[0..mid-1])
    #     right = sort(arr[mid..arr.length])
    #     merge(left, right)
    #   end
    # end

    # private

    # def self.merge(left, right)
    #   if left.empty?
    #     right
    #   elsif right.empty?
    #     left
    #   elsif left[0] < right[0]
    #     [left[0]] + merge(left[1..left.length], right)
    #   else
    #     [right[0]] + merge(left, right[1..right.length])
    #   end
    # end
  end
end