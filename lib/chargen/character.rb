require "chargen/stats"
require "chargen/skills"

class Character
  attr_reader :name, :stats, :skills

  def initialize(name, stats=Stats.new)
    @name = name
    @stats = stats
    @skills = Skills.new stats
  end

  def level
    stats.level
  end

  # TODO: Concepts referenced that need implemented:
  #
  # faction
  # traits
  # three tags
end
