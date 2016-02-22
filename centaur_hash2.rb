class Centaur
  def initialize (name, breed)
    @hash = {"name" => name, "breed" => breed,"activity" => 0, "standing"=> true }
  end

  def name
    @hash["name"]
  end

  def breed
    @hash["breed"]
  end

  def shoot

     work("Twang!!!")

    end

  def run

     work("Clop clop clop clop!!!")

  end

  def cranky?
    if @hash["activity"] >= 3
      true
    else
      false
    end
  end

  def standing?
    @hash["standing"]
  end

  def sleep

    standing? ? "NO!" : @hash["activity"] = 0

  end

  def lay_down
    @hash["standing"] = false

  end

  def laying?
    !standing?
  end

  def stand_up
    @hash["standing"] = true
  end

  def work(sound)
    @hash["activity"] += 1
    if cranky? || laying?
      "NO!"
    else
      sound
    end
  end
end

