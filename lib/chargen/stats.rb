class Stats
  attr_reader :level, :strength, :perception, :endurance, :charisma, :intelligence, :agility, :luck, :max_hp, :max_sp, :max_lp

  def initialize(level, strength, perception, endurance, charisma, intelligence, agility, luck)
    @level = data[:level]
    @strength = data[:strength]
    @perception = data[:perception]
    @endurance = data[:endurance]
    @charisma = data[:charisma]
    @intelligence = data[:intelligence]
    @agility = data[:agility]
    @luck = data[:luck]

    first_roll
    re_roll_1
    re_roll_2
    re_roll_3
    calculate_max_hp
    calculate_max_sp
    calculate_max_lp
  end

  private
  def first_roll
    #stuff regarding randomization for the first 7-stat roll
  end
  def re_roll_1
    #enable selection of a full reroll or move to singular rerolls
  end
  def re_roll_2
    #if singular reroll, choose new, else give options
  end
  def re_roll_3
    #if singular reroll, choose new, else give options
  end
  def calculate_max_hp
    @max_hp = (5 * :level) + (5 * :strength) + (10 * :endurance)
  end
  def calculate_max_sp
    @max_sp = (5 * :level) + (10 * :endurance) + (5 * :intelligence)
  end
  def calculate_max_lp
    @max_lp = 1 + (:level / 5).floor + (:endurance / 4).floor
  end
end
