require "chargen/stats"
require "chargen/skills"

class Character
  attr_reader :stats, :skills

  def initialize(name, faction, stats, skills, traits, three_tags)
    @name = name
    @faction = faction
    @stats = Stats.new
    @skills = Skills.new(@stats)
    @traits = traits
    @three_tags = three_tags
  end
end
