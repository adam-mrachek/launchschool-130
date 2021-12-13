require 'minitest/autorun'
require 'minitest/reporters'

require_relative 'cat'

class CatTest < MiniTest::Test
  def setup
    @kitty = Cat.new('Kitty', 4)
  end

  def test_is_cat; end

  def test_name
    refute_equal('Kitty', @kitty.name)
  end

  def test_miaow
    assert(@kitty.miaow.include?(' is miaowing.'))
  end

  def test_raises_error
    assert_raises(ArgumentError) do
      Cat.new
    end
  end

  def test_is_not_purrier
    patch = Cat.new('Patch', 5)
    milo = Cat.new('Milo', 3)
  
    refute(patch.purr_factor > milo.purr_factor)
  end
end