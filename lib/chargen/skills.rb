require "chargen/stats"

class Skills
  def initialize(stats=Stats.new)
    @stats = stats
  end

  def barter
    (2 * stats.charisma) + stats.intelligence
  end

  def energy_weapons
    stats.agility + stats.intelligence + stats.perception
  end

  def explosives
    stats.agility + stats.perception + stats.strength
  end

  def heavy_weapons
    stats.endurance + stats.perception + stats.strength
  end

  def lockpick
    (2 * stats.perception) + stats.agility
  end

  def medicine
    (2 * stats.intelligence) + stats.charisma
  end

  def melee_weapons
    (2 * stats.strength) + stats.endurance
  end

  def repair
    (2 * stats.perception) + stats.intelligence
  end

  def science
    (2 * stats.intelligence) + stats.perception
  end

  def small_arms
    (2 * stats.perception) + stats.agility
  end

  def sneak
    (2 * stats.agility) + stats.perception
  end

  def speech
    (2 * stats.charisma) + stats.intelligence
  end

  def unarmed
    stats.agility + stats.endurance + stats.strength
  end

  private
  def stats
    @stats
  end
end
