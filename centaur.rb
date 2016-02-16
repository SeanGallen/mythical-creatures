class Centaur
  def initialize (name, breed)
    @name = name
    @breed = breed
    @activity = 0
    @standing = true
  end

  def name
    @name
  end

  def breed
    @breed
  end

  def shoot
    @activity += 1
    if @activity >= 3 || !@standing
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run

    @activity += 1
    if @activity >= 3 || !@standing
       "NO!"
    else "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @activity >= 3
      true
    else
      false
    end
  end

  def standing?
    @standing
  end

  def sleep
    if @standing
      "NO!"
    else
      @activity = 0
    end

  end

  def lay_down
    @standing = false

  end

  def laying?
    !@standing
  end

  def stand_up
    @standing = true
  end

end

