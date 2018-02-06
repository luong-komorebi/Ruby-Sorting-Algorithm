lib_path = File.expand_path('../', __FILE__)
$LOAD_PATH.unshift(lib_path) unless $LOAD_PATH.include?(lib_path)

Dir["./SortingAlgo/*.rb"].each { |file| require file }

require 'benchmark'

module SortingAlgo
  class Main
    def initialize
      @arr = Array.new(20000) { rand(50000) }
    end

    def bubble_sort(number)
      SortingAlgo::BubbleSort.sort(@arr[0..number])
    end

    def selection_sort(number)
      SortingAlgo::SelectionSort.sort(@arr[0..number])
    end

    def insertion_sort(number)
      SortingAlgo::InsertionSort.sort(@arr[0..number])
    end

    def merge_sort(number)
      SortingAlgo::MergeSort.sort(@arr[0..number])
    end

    def quick_sort(number)
      SortingAlgo::QuickSort.sort(@arr[0..number])
    end

    def radix_sort(number)
      SortingAlgo::RadixSort.sort(@arr[0..number])
    end
  end
end

Sort = SortingAlgo::Main.new

$stdout = File.new('benchmark.log', 'w')
$stdout.sync = true

Benchmark.bm(100) do |x|
  x.report("Bubble sort 100 elements") { Sort.bubble_sort(100)}
  x.report("Selection sort 100 elements") { Sort.selection_sort(100) }
  x.report("Insertion sort 100 elements") { Sort.insertion_sort(100) }
  x.report("Merge sort 100 elements") { Sort.merge_sort(100) }
  x.report("Quick sort 100 elements") { Sort.quick_sort(100) }
  x.report("Radix sort 100 elements") { Sort.radix_sort(100) }
  x.report("Bubble sort 1000 elements") { Sort.bubble_sort(1000) }
  x.report("Selection sort 1000 elements") { Sort.selection_sort(1000) }
  x.report("Insertion sort 1000 elements") { Sort.insertion_sort(1000) }
  x.report("Merge sort 1000 elements") { Sort.merge_sort(1000) }
  x.report("Quick sort 1000 elements") { Sort.quick_sort(1000) }
  x.report("Radix sort 1000 elements") { Sort.radix_sort(1000) }
  x.report("Bubble sort 5000 elements ") { Sort.bubble_sort(5000) }
  x.report("Selection sort 5000 elements") { Sort.selection_sort(5000) }
  x.report("Insertion sort 5000 elements") { Sort.insertion_sort(5000) }
  x.report("Merge sort 5000 elements") { Sort.merge_sort(5000) }
  x.report("Quick sort 5000 elements") { Sort.quick_sort(5000) }
  x.report("Radix sort 5000 elements") { Sort.radix_sort(5000) }
  x.report("Bubble sort 10000 elements") { Sort.bubble_sort(10000) }
  x.report("Selection sort 10000 elements") { Sort.selection_sort(10000) }
  x.report("Insertion sort 10000 elements") { Sort.insertion_sort(10000) }
  x.report("Merge sort 10000 elements") { Sort.merge_sort(10000) }
  x.report("Quick sort 10000 elements") { Sort.quick_sort(10000) }
  x.report("Radix sort 10000 elements") { Sort.radix_sort(10000) }
  x.report("Selection sort 11000 elements") { Sort.selection_sort(11000) }
  x.report("Insertion sort 11000 elements") { Sort.insertion_sort(11000) }
  x.report("Merge sort 11000 elements") { Sort.merge_sort(11000) }
  x.report("Quick sort 11000 elements") { Sort.quick_sort(11000) }
  x.report("Radix sort 11000 elements") { Sort.radix_sort(11000) }
end