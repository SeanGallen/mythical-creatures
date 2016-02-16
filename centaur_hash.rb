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
    @hash["activity"] += 1
    if @hash["activity"] >= 3 || !@hash["standing"]
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run

    @hash["activity"] += 1
    if @hash["activity"] >= 3 || !@hash["standing"]
       "NO!"
    else "Clop clop clop clop!!!"
    end
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
    if @hash["standing"]
      "NO!"
    else
      @hash["activity"] = 0
    end

  end

  def lay_down
    @hash["standing"] = false

  end

  def laying?
    !@hash["standing"]
  end

  def stand_up
    @hash["standing"] = true
  end
end

