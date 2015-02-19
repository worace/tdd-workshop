require "minitest"
require "minitest/autorun"

class CreditCheckTest < Minitest::Test
  def test_it_can_break_a_number_into_individual_digits
    credit_check = CreditCheck.new
    # 12345 -> [1,2,3,4,5]
    assert_equal [1,2,3,4,5], credit_check.split_number(12345)
  end

  def test_it_can_double_every_other_digit_in_an_array
    credit_check = CreditCheck.new
    # [1,2,3,4,5] -> [1,4,3,8,5]
    assert_equal [1,4,3,8,5], credit_check.double_every_other_digit([1,2,3,4,5])
    # [1,2,3,4,5,6] -> [2,2,6,4,10,6]
    assert_equal [2,2,6,4,10,6], credit_check.double_every_other_digit([1,2,3,4,5,6])
  end
end
