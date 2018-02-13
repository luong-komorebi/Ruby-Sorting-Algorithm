# Sorting algorithms in Ruby

This folder contains source codes of 6 sorting algorithm written in Ruby:
* Bubble Sort  
* Insertion Sort  
* Merge Sort  
* Quick Sort  
* Radix Sort  
* Selection Sort    

ALl these sorting methods are executed with 100, 1000, 5000, 10000 and 20000 elements.  
The result is stored in `benchmark.log`. Besides, I also made a `comparison_sheet` and equivalent pdf files for convenient chart viewing and data extracting.  

If you want to run this code, please refer to [Installing Ruby guide](https://www.ruby-lang.org/en/documentation/installation/) and run the following command in your terminal :

```sh
# Install bundler
gem install bundler

# Install dependencies with bundler
bundle install  

# run the sorting algorithms (Wait for a few mins for it to finish)
bundle exec ruby sorting_algo.rb
```

Overall it can easily be seen that :
* Bubble sort is always the slowest one. This is absolutely obvious since bubble sort is not efficient and its average case complexity is Θ(n^2)  
* Selection sort and insertion sort follows right after merge sort. They differ slightly from each other. Both of them does have average case complexity of Θ(n^2). However, they are still better than bubble sort. Selection sort is faster than Bubble sort because Selection sort swaps elements "n" times in worst case, but Bubble sort swaps almost n\*(n-1) times. Insertion sort's advantage is that it only scans as many elements as it needs in order to place the k + 1st element, while selection sort must scan all remaining elements to find the k + 1st element.  
* Quick sort and merge sort is no doubt two of the fastest one. Typically, quicksort is significantly faster in practice than other Θ(nlogn) algorithms, because its inner loop can be efficiently implemented on most architectures, and in most real-world data, it is possible to make design choices which minimize the probability of requiring quadratic time.  Quick sort is in-place sorting algorithm where as merge sort is not in-place. Plus, choosing the pivot point may affect the performance of quicksort.  
* Radix sort is fast but not the fastest. Although it is Θ(nk), but our K is not big enough for it to maximize it effects.   