require 'minitest/autorun'

class TestCheersIntegration < Minitest::Test
	
	def test_with_no_arguments
		output = `./cheers`
		expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with `./cheers [Name] [mm/dd Birthday]`
EOS
		assert_equal expected, output
	end

end