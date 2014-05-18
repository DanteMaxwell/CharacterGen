require "minitest/autorun"
require "chargen/skills"

class TestSkills < MiniTest::Unit::TestCase
  def test_barter_determined_by_charisma_and_intelligence
    stats = Stats.new(charisma: 2, intelligence: 5)
    assert_equal (4 + 5), Skills.new(stats).barter
  end

  def test_energy_weapons_determined_by_perception_intelligence_and_agility
    stats = Stats.new(agility: 4, intelligence: 5, perception: 6)
    assert_equal (4 + 5 + 6), Skills.new(stats).energy_weapons
  end

  def test_explosives_determined_by_strength_perception_and_agility
    stats = Stats.new(agility: 3, perception: 5, strength: 7)
    assert_equal (3 + 5 + 7), Skills.new(stats).explosives
  end

  def test_heavy_weapons_determined_by_strength_endurance_and_perception
    stats = Stats.new(endurance: 6, perception: 4, strength: 5)
    assert_equal (6 + 4 + 5), Skills.new(stats).heavy_weapons
  end

  def test_lockpick_determined_by_perception_and_agility
    stats = Stats.new(agility: 7, perception: 5)
    assert_equal (7 + 10), Skills.new(stats).lockpick
  end

  def test_medicine_determined_by_intelligence_and_charisma
    stats = Stats.new(charisma: 5, intelligence: 8)
    assert_equal (5 + 16), Skills.new(stats).medicine
  end

  def test_melee_weapons_determined_by_strength_and_endurance
    stats = Stats.new(endurance: 7, strength: 7)
    assert_equal (7 + 14), Skills.new(stats).melee_weapons
  end

  def test_repair_determined_by_perception_and_intelligence
    stats = Stats.new(intelligence: 6, perception: 7)
    assert_equal (6 + 14), Skills.new(stats).repair
  end

  def test_science_determined_by_perception_and_intelligence
    stats = Stats.new(intelligence: 6, perception: 7)
    assert_equal (12 + 7), Skills.new(stats).science
  end

  def test_small_arms_determined_by_perception_and_agility
    stats = Stats.new(agility: 8, perception: 6)
    assert_equal (8 + 12), Skills.new(stats).small_arms
  end

  def test_sneak_determined_by_perception_and_agility
    stats = Stats.new(agility: 8, perception: 6)
    assert_equal (16 + 6), Skills.new(stats).sneak
  end

  def test_speech_determined_by_charisma_and_intelligence
    stats = Stats.new(charisma: 7, intelligence: 6)
    assert_equal (14 + 6), Skills.new(stats).speech
  end

  def test_unarmed_determined_by_strength_endurance_and_agility
    stats = Stats.new(agility: 5, endurance: 6, strength: 8)
    assert_equal (5 + 6 + 8), Skills.new(stats).unarmed
  end

  def test_assume_minimum_stats_if_none_provided
    assert_equal (1 + 1 + 1), Skills.new.unarmed
  end
end
