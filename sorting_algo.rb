lib_path = File.expand_path('../', __FILE__)
$LOAD_PATH.unshift(lib_path) unless $LOAD_PATH.include?(lib_path)

Dir["./SortingAlgo/*.rb"].each { |file| require file }

module SortingAlgo
  class Main
    def initialize
      @arr = Array.new(10) { rand(100) }
    end

    def bubble_sort
      SortingAlgo::BubbleSort.sort(@arr)
    end

    def selection_sort
      SortingAlgo::SelectionSort.sort(@arr)
    end

    def insertion_sort
      SortingAlgo::InsertionSort.sort(@arr)
    end

    def merge_sort
      SortingAlgo::MergeSort.sort(@arr)
    end

    def quick_sort
      SortingAlgo::QuickSort.sort(@arr)
    end

    def radix_sort
      SortingAlgo::RadixSort.sort(@arr)
    end
  end
end

Sort = SortingAlgo::Main.new

print Sort.bubble_sort
print Sort.selection_sort
print Sort.insertion_sort
print Sort.merge_sort
print Sort.quick_sort
print Sort.radix_sort