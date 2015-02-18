class Cryptographer
  def encrypt(message) #"ad"
    # find position of the character (a -> 0)
    # find the new (shifted) position (0 -> 13)
    # find the character at that new position (13 -> n)

    # what can we do -- encrypt single characters
    # how do i encrypt a multicharacter string?
      # encrypt each character individually

    encrypted_chars = message.chars.map do |char|
                        encrypt_char(char)
                      end
    encrypted_chars.join
  end

  def encrypt_char(char)
    pos = position(char) # 0
    new_pos = rot(pos) # 13
    new_char = character(new_pos) # "n"
    new_char
  end

  def alphabet
    ("a".."z").to_a
  end

  # finds 0-based numerical position
  # of a character in the alphabet
  def position(character)
    alphabet.index(character)
  end

  # finds a character in the alphabet
  # given its 0-based numerical position
  def character(position)
    alphabet[position]
  end

  def rot(position)
    position + 13
  end
end
