## Quicksort In-Place

Implemented both a not in-place and an in-place, recursive quicksort. The worst and best case time complexity for the in-place sort are O(n**2) and O(nlogn), with O(1) space.

A note on choice of a randomly selected pivot element:

Calling quicksort with a constant pivot index on an already sorted array would result in a n-deep stack (n recursive calls), thus an O(n**2) time complexity.

To avoid this as much as possible, the pivot index is randomly generated, so it is almost always O(nlogn), which is the best case for any sorting algorithm :)
