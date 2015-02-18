require "minitest"
require "minitest/autorun"
require_relative "bubble_sort"

class BubbleSortTest < Minitest::Test
  def test_it_exists
    assert BubbleSort
  end

  def test_it_sorts_a_single_element
    bs = BubbleSort.new
    assert_equal [1], bs.sort([1])
  end

  def test_it_sorts_2_elements_already_sorted
    bs = BubbleSort.new
    assert_equal [1,2], bs.sort([1,2])
  end

  def test_it_sorts_2_elements_out_of_order
    bs = BubbleSort.new
    assert_equal [1,2], bs.sort([2,1])
  end

  def test_it_swaps_indices_in_an_array
    bs = BubbleSort.new
    numbers = [2,1]
    assert_equal [1,2], bs.swap(numbers, 0, 1)
  end

  def test_it_sorts_array_of_3_elements
    bs = BubbleSort.new
    numbers = [1,3,2]
    assert_equal [1,2,3], bs.sort(numbers)
  end

  def test_it_sorts_multiple_positions_out_of_order
    bs = BubbleSort.new
    numbers = [3,2,1]
    assert_equal [1,2,3], bs.sort(numbers)

  end
end
