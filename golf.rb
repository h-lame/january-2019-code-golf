module Golf
  # Hole 1: Multiply the contents of an array
  #
  # A nice each one to start. Given an array numbers, return the result of
  # multiplying all of the numbers together.
  #
  # The parameter `a` is the array of numbers.
  def hole1(a)
    a.reduce :*
    # put your implementation in here, but please leave the comments above and at the 'end'

  end # Hole 1

  # Hole 2: Fizzbuzz
  #
  # Everyone knows fizzbuzz, right?
  #
  # The parameter 'l' is the limit - the highest number to reach.
  def hole2(l)
    (1..l).map { |x|
      o = ''
      o << 'fizz' if (x % 3) == 0
      o << 'buzz' if (x % 5) == 0
      o == '' ? x : o
    }
    # put your implementation in here, but please leave the comments above and at the 'end'

  end # Hole 2

  # Hole 3: The Caeser Cipher
  #
  # A very simple way of encoding one string, using a variable number of "shifts" to
  # turn each letter into a different one. If you know the shift, you can then decode
  # the string you receive into the original message. For example:
  #
  #  * "abc" with a shift of 1 becomes "bcd"
  #  * "Hello" with a shift of 3 becomes "Khoor"
  #  * "Jazz Hands" with a shift of 10 becomes "Mdcc Kdqgv"
  #
  # Your solution should handle upper and lowercase letters, retaining their case.
  #
  # The parameter `s` is the string to encode, and `x` is the number to shift by.
  def hole3(s, x)
    f = ->(a) { a.zip a.to_a.rotate x }
    s.chars.map { |c| (f[?A..?Z]+f[?a..?z]).to_h.fetch c, c }.join
    # put your implementation in here, but please leave the comments above and at the 'end'

  end # Hole 3

  # Hole 4: Roman Numerals
  #
  # Write a simple function to turn an integer into its roman numeral form. To get
  # you started, here's the first ten numbers: I, II, III, IV, V, VI, VII, VIII, IX, X...
  #
  # The parameter `i` is the number to convert
  def hole4(i)
    o = ''
    # {1000=>?M,900=>'CM',500=>?D,400=>'CD',100=>?C,90=>'XC',50=>?L,40=>'XL',10=>?X,9=>'IX',5=>?V,4=>'IV',1=>?I}
    {1000=>?M,900=>'CM',500=>?D,100=>?C,90=>'XC',50=>?L,10=>?X,9=>'IX',5=>?V,4=>'IV',1=>?I}
    .each { |n,d|
      while i >= n
        o << d
        i -= n
      end
    }
    o
    # put your implementation in here, but please leave the comments above and at the 'end'

  end # Hole 4

  # Hole 5: Evil Numbers
  #
  # An "evil" number is one which has an even number of '1' digits in its binary version.
  # So for example, 5 is evil because `101` has 2, but 11 is _not_ evil, because `1011`
  # does not. Find all the numbers (starting at 0, up to the limit) which are evil, and
  # return an array of them.
  #
  # The parameter `l` is the highest number to consider
  def hole5(l)
    (0..l).select { |n| n.to_s(2).count(?1).even? }
    # put your implementation in here, but please leave the comments above and at the 'end'

  end # Hole 5

  # Hole 6: Deck the halls
  #
  # Generate an array containing elements representing every card in a deck, including
  # the jokers. Represent the cards using a two/three-character string:
  #
  # * the first character is the rank, ace to king: A, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K
  # * the second character is the suit: C, H, S, D for clubs, hearts, spaces and diamonds
  # * each joker should just be a single character string 'J'
  #
  # The order of the cards doesn't matter
  #
  def hole6
    [?A,*(?2..'10'),?J,?K,?Q].product([?C,?H,?S,?D]).map(&:join) + [?J,?J]
    # put your implementation in here, but please leave the comments above and at the 'end'

  end # Hole 5

  # Please ignore this little bit of code plumbing
  extend self
end
