require "minitest"
require "minitest/autorun"
require_relative "cryptographer"

class CryptographerTest < Minitest::Test
  def test_it_runs
    assert true
  end

  def test_cryptographer_exists
    assert Cryptographer
  end

  # Cryptographer can encrypt and decrypt a message
  # using ROT13
  # a -> n
  # y -> l

  def test_it_encrypts_a_single_letter
    cryptographer = Cryptographer.new
    assert_equal "n", cryptographer.encrypt("a")
  end

  def test_it_encrypts_2_letters
    cryptographer = Cryptographer.new
    assert_equal "nq", cryptographer.encrypt("ad")
  end

  def test_it_encrypts_a_single_char
    cryptographer = Cryptographer.new
    assert_equal "n", cryptographer.encrypt_char("a")
  end

  def test_it_knows_the_alphabet
    cryptographer = Cryptographer.new
    abet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    assert_equal abet, cryptographer.alphabet
  end

  def test_it_finds_alphabetic_position_of_a_character
    cryptographer = Cryptographer.new
    assert_equal 0, cryptographer.position("a")
  end

  def test_it_rotates_a_position
    cryptographer = Cryptographer.new
    assert_equal 13, cryptographer.rot(0)
  end

  def test_it_finds_a_character_for_a_position
    cryptographer = Cryptographer.new
    assert_equal "n", cryptographer.character(13)
  end
end
