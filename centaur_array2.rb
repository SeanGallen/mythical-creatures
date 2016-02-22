class Centaur
  NAME = 0
  BREED = 1
  ACTIVITY = 2
  STANDING = 3
  THRESHOLD_OF_CRANKINESS = 3
  def initialize (name, breed)
    @arr = [name, breed, 0, true ]
  end

  def name
    @arr[NAME]
  end

  def breed
    @arr[BREED]
  end

  def shoot
    @arr[ACTIVITY] += 1
    if @arr[ACTIVITY] >= 3 || laying?
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run

    @arr[2] += 1
    if @arr[2] >= 3 || laying?
       "NO!"
    else "Clop clop clop clop!!!"
    end
  end

  def cranky?
    @arr[ACTIVITY] >= THESHOLD_OF_CRANKINESS
    #if @arr[2] >= 3
       true
  else
      false
    end
  end

  def standing?
    @arr[3]
  end

  def sleep
    if @arr[3]
      "NO!"
    else
      @arr[2] = 0
    end

  end

  def lay_down
    @arr[3] = false

  end

  def laying?
    !@arr[3]
  end

  def stand_up
    @arr[3] = true
  end

end

