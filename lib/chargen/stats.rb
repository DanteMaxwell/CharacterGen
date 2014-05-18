class Stats
  BASE_LP = 1
  STAT_DEFAULT = 1

  attr_reader :level, :strength, :perception, :endurance,
    :charisma, :intelligence, :agility, :luck

  def initialize(data={})
    @data         = data
    @level        = data_or_default :level
    @strength     = data_or_default :strength
    @perception   = data_or_default :perception
    @endurance    = data_or_default :endurance
    @charisma     = data_or_default :charisma
    @intelligence = data_or_default :intelligence
    @agility      = data_or_default :agility
    @luck         = data_or_default :luck
  end

  def max_hp
    (level * 5) + (endurance * 10) + (strength * 5)
  end

  def max_sp
    (level * 5) + (endurance * 10) + (intelligence * 5)
  end

  def max_lp
    BASE_LP + (level / 5) + (endurance / 4)
  end

  private
  def data_or_default(key, default=STAT_DEFAULT)
    @data[key] || default
  end

  # TODO: Methods defined that need implemented:
  #
  # first_roll (randomization for the first 7-stat roll)
  # re_roll_1 (full reroll or move to singular rerolls)
  # re_roll_2 (if singular reroll, choose new, else give options)
  # re_roll_3 (if singular reroll, choose new, else give options)
end
