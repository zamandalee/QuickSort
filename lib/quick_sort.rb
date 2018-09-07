require 'byebug'
class QuickSort
  # Quick sort has average case time complexity O(nlogn), but worst
  # case O(n**2).

  # Not in-place. Uses O(n) memory.
  def self.sort1(array)
    return array if array.length < 2
    pivot_idx = rand(array.length)
    pivot_el = array[pivot_idx]

    left, right = [], []
    array.each_with_index do |el, idx|
      next if idx == pivot_idx
      el > pivot_el ? right << el : left << el
    end

    self.sort1(left) + [pivot_el] + self.sort1(right)
  end

  # In-place
  def self.sort2!(array, start = 0, length = array.length, &prc)
    return array if array.length < 2
    pivot_idx = rand(array.length)
    pivot_el = array[pivot_idx]

    # no new arrays

  end

  def self.partition(array, start, length, &prc)
    return if length < 2
    prc ||= Proc.new { |el1, el2| el1 <=> el2 }

    end_idx = start + length
    pivot_idx = start
    barrier_idx = start + 1

    (start + 1...start + length).each do |idx|
      if prc.call(array[pivot_idx], array[idx]) != -1
        array[idx], array[barrier_idx] = array[barrier_idx], array[idx]
        barrier_idx += 1
      end
    end

    array[pivot_idx], array[barrier_idx - 1] = array[barrier_idx - 1], array[pivot_idx]
    pivot_idx = barrier_idx - 1
  end
end
