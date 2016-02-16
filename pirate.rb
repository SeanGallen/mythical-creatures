class Pirate
  def initialize(name, job= "Scallywag", cursed = false, booty = 0)
    @name = name
    @job = job
    @cursed = cursed
    @booty = booty
  end

  def name
    @name
  end
  def job
    @job
  end
  def cursed
    @cursed
  end
  def cursed?
    false
  end
  def commit_heinous_act
   if commit_heinous_act >=3
    puts cursed = true
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
