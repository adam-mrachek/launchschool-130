class Player
  attr_reader :name
  attr_accessor :health

  def initialize(name, health = 50)
    @name = name.capitalize
    @health = health
  end

  def to_s
    if self.dead?
      "I was #{name}, now I am dead :(."
    else
      "I'm #{name} with health = #{health}."
    end
  end

  def boost
    if self.dead?
      raise NoMethodError
    else
      self.health += 20
    end
  end

  def hurt
    if self.dead?
      raise NoMethodError
    else
      self.health -= 10
    end
  end

  def dead?
    @health < 0
  end
end