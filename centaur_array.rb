class Centaur
  def initialize (name, breed)
    @arr = [name, breed, 0, true ]
  end

  def name
    @arr[0]
  end

  def breed
    @arr[1]
  end

  def shoot
    @arr[2] += 1
    if @arr[2] >= 3 || !@arr[3]
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run

    @arr[2] += 1
    if @arr[2] >= 3 || !@arr[3]
       "NO!"
    else "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @arr[2] >= 3
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

