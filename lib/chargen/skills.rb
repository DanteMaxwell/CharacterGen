class Skills
  attr_reader :stats, :energy_weapons, :explosives, :heavy_weapons, :lockpick, :medicine, :melee_weapons, :repair, :science, :small_arms, :sneak, :speech, :unarmed
  def initialize(level, strength, perception, endurance, charisma, intelligence, agility, luck)
    calculate_skill_barter
    calculate_skill_energy_weapons
    calculate_skill_explosives
    calculate_skill_heavy_weapons
    calculate_skill_lockpick
    calculate_skill_medicine
    calculate_skill_melee_weapons
    calculate_skill_repair
    calculate_skill_science
    calculate_skill_small_arms
    calculate_skill_sneak
    calculate_skill_speech
    calculate_skill_unarmed
  end

  private

  def calculate_skill_barter
    @barter = (2 * :charisma) + :intelligence
  end
  def calculate_skill_energy_weapons
    @energy_weapons = :perception + :intelligence + :agility
  end
  def calculate_skill_explosives
    @explosives = :strength + :perception + :agility
  end
  def calculate_skill_heavy_weapons
    @heavy_weapons = :strength + :endurance + :perception
  end
  def calculate_skill_lockpick
    @lockpick = (2 * :perception) + :agility
  end
  def calculate_skill_medicine
    @medicine = (2 * :intelligence) + :charisma
  end
  def calculate_skill_melee_weapons
    @melee_weapons = (2 * :strength) + :endurance
  end
  def calculate_skill_repair
    @repair = (2 * :perception) + :intelligence
  end
  def calculate_skill_science
    @science = :perception + (2 * :intelligence)
  end
  def calculate_skill_small_arms
    @small_arms = (2 * :perception) + :agility
  end
  def calculate_skill_sneak
    @sneak = :perception + (2 * :agility)
  end
  def calculate_skill_speech
    @speech = (2 * :charisma) + :intelligence
  end
  def calculate_skill_unarmed
    @unarmed = :strength + :endurance + :agility
  end
end
