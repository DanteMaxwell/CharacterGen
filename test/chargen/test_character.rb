require "minitest/autorun"
require "chargen/character"

class TestCharacter < MiniTest::Unit::TestCase
  def test_name
    character = Character.new "Francis"
    assert_equal "Francis", character.name
  end

  def test_level
    character = Character.new "Francis", Stats.new(level: 4)
    assert_equal 4, character.level
  end
end
