require "chargen/stats"
require "chargen/skills"
require "chargen/faction"
require "chargen/traits"
require "chargen/tags"

class Character
  attr_reader :name, :stats, :skills, :faction, :traits, :tags

  def initialize(name, stats=Stats.new, skills, faction, traits, tags)
    @name = name
    @stats = stats
    @skills = Skills.new stats
    @faction = faction
    @traits = traits
    @tags = tags
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
