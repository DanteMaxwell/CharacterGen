require "minitest/autorun"
require "chargen/stats"

class TestStats < MiniTest::Unit::TestCase
  #
  # Level
  #
  def test_level
    assert_equal 5, Stats.new(level: 5).level
  end

  def test_default_level_is_one
    assert_equal 1, Stats.new.level
  end

  #
  # Strength
  #
  def test_strength
    assert_equal 7, Stats.new(strength: 7).strength
  end

  def test_default_strength_is_one
    assert_equal 1, Stats.new.strength
  end

  #
  # Perception
  #
  def test_perception
    assert_equal 4, Stats.new(perception: 4).perception
  end

  def test_default_perception_is_one
    assert_equal 1, Stats.new.perception
  end

  #
  # Endurance
  #
  def test_endurance
    assert_equal 6, Stats.new(endurance: 6).endurance
  end

  def test_default_endurance_is_one
    assert_equal 1, Stats.new.endurance
  end

  #
  # Charisma
  #
  def test_charisma
    assert_equal 3, Stats.new(charisma: 3).charisma
  end

  def test_default_charisma_is_one
    assert_equal 1, Stats.new.charisma
  end

  #
  # Intelligence
  #
  def test_intelligence
    assert_equal 2, Stats.new(intelligence: 2).intelligence
  end

  def test_default_intelligence_is_one
    assert_equal 1, Stats.new.intelligence
  end

  #
  # Agility
  #
  def test_agility
    assert_equal 6, Stats.new(agility: 6).agility
  end

  def test_default_agility_is_one
    assert_equal 1, Stats.new.agility
  end

  #
  # Luck
  #
  def test_luck
    assert_equal 2, Stats.new(luck: 2).luck
  end

  def test_default_luck_is_one
    assert_equal 1, Stats.new.luck
  end

  #
  # Max HP
  #
  def test_level_affects_max_hp_by_multiples_of_five
    stats = Stats.new(level: 3, endurance: 0, strength: 0)
    assert_equal 15, stats.max_hp
  end

  def test_endurance_affects_max_hp_by_multiples_of_ten
    stats = Stats.new(endurance: 5, strength: 0, level: 0)
    assert_equal 50, stats.max_hp
  end

  def test_strength_affects_max_hp_by_multiples_of_five
    stats = Stats.new(strength: 4, level: 0, endurance: 0)
    assert_equal 20, stats.max_hp
  end

  def test_level_endurance_and_strength_determine_max_hp
    stats = Stats.new(level: 5, endurance: 4, strength: 6)
    assert_equal (25 + 40 + 30), stats.max_hp
  end

  #
  # Max SP
  #
  def test_level_affects_max_sp_by_multiples_of_five
    stats = Stats.new(level: 2, endurance: 0, intelligence: 0)
    assert_equal 10, stats.max_sp
  end

  def test_endurance_affects_max_sp_by_multiples_of_ten
    stats = Stats.new(endurance: 4, level: 0, intelligence: 0)
    assert_equal 40, stats.max_sp
  end

  def test_intelligence_affects_max_sp_by_multiples_of_five
    stats = Stats.new(intelligence: 6, level: 0, endurance: 0)
    assert_equal 30, stats.max_sp
  end

  def test_level_endurance_and_intelligence_determine_max_sp
    stats = Stats.new(level: 5, endurance: 3, intelligence: 7)
    assert_equal (25 + 30 + 35), stats.max_sp
  end

  #
  # Max LP
  #
  def test_default_max_lp_is_one
    assert_equal 1, Stats.new.max_lp
  end

  def test_level_affects_max_lp_by_integer_division_five
    assert_equal (1 + 0), Stats.new(level: 2).max_lp
    assert_equal (1 + 2), Stats.new(level: 11).max_lp
  end

  def test_endurance_affects_max_lp_by_integer_division_four
    assert_equal (1 + 0), Stats.new(endurance: 3).max_lp
    assert_equal (1 + 1), Stats.new(endurance: 4).max_lp
  end

  def test_level_and_endurance_determine_max_lp
    stats = Stats.new(level: 4, endurance: 6)
    assert_equal (1 + 0 + 1), stats.max_lp

    stats = Stats.new(level: 8, endurance: 8)
    assert_equal (1 + 1 + 2), stats.max_lp
  end
end
