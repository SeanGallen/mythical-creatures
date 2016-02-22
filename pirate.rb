class Pirate
  def initialize(name, job= "Scallywag", cursed = false, booty = 0)
    @name = name
    @job = job
    @cursed = cursed
    @booty = booty
    @acts = 0
  end

  def name
    @name
  end

  def job
    @job
  end

  def acts
    @act
  end

  def cursed?
    @acts >= 3
  end

  def commit_heinous_act
    @acts += 1
    if cursed?
      false
    else
      true
    end
  end

  def can_rob_ships
    true
  end

  def booty
    @booty
  end

  def robs_ships
    @booty = 100
  end
end
