require 'minitest/autorun'

class TestCheersIntegration < Minitest::Test

  #############################################
  #  0 args tests
  #############################################
  def test_help_message
    output = `./cheers`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with `./cheers [Name] [mm/dd Birthday]`
EOS
    assert_equal expected, output
  end


  #############################################
  #  1 arg only tests
  #############################################
  def test_only_name_argument_and_name_valid
    output = `./cheers Abby`
    expected = <<EOS
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
Abby's just GRAND!
I would wish you a happy birthday, if I knew when that was!
EOS
    assert_equal expected, output
  end

  def test_only_non_word_argument_a
    output = `./cheers *!#123`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with `./cheers [Name] [mm/dd Birthday]`
EOS
    assert_equal expected, output
  end


  def test_only_non_word_argument_b
    output = `./cheers 08/25`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with `./cheers [Name] [mm/dd Birthday]`
EOS
    assert_equal expected, output
  end


  def test_only_one_argument_of_empty_string
    output = `./cheers ""`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with `./cheers [Name] [mm/dd Birthday]`
EOS
    assert_equal expected, output
  end


  #############################################
  #  2 args tests
  #############################################
  def test_name_valid_and_birthday_valid
    output = `./cheers Abby 08/25`
    expected = <<EOS
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
Abby's just GRAND!
Awesome! Your birthday is in 127 days! Happy Birthday in advance!
EOS
  assert_equal expected, output
  end

  def test_name_valid_and_birthday_invalid_a
    output = `./cheers Abby 25/02`
    expected = <<EOS
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
Abby's just GRAND!
I couldn't understand that. Could you give that to me in the mm/dd format next time?
EOS
    assert_equal expected, output
  end

  def test_name_valid_and_birthday_invalid_b
    output = `./cheers Abby 08/25/15`
    expected = <<EOS
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
Abby's just GRAND!
I couldn't understand that. Could you give that to me in the mm/dd format next time?
EOS
    assert_equal expected, output
  end

  def test_name_valid_and_birthday_invalid_c
    output = `./cheers Abby 02/44`
    expected = <<EOS
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
Abby's just GRAND!
I couldn't understand that. Could you give that to me in the mm/dd format next time?
EOS
    assert_equal expected, output
  end

  def test_name_valid_and_birthday_invalid_d
    output = `./cheers Abby Jan/12`
    expected = <<EOS
Give me an... A
Give me a... B
Give me a... B
Give me a... Y
Abby's just GRAND!
I couldn't understand that. Could you give that to me in the mm/dd format next time?
EOS
    assert_equal expected, output
  end


  def test_name_invalid_and_birthday_valid
    output = `./cheers !*123 08/25`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with `./cheers [Name] [mm/dd Birthday]`
EOS
    assert_equal expected, output
  end

  def test_name_invalid_and_birthday_invalid
    output = `./cheers !*123 44/25`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with `./cheers [Name] [mm/dd Birthday]`
EOS
    assert_equal expected, output
  end

end
