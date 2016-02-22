class Medusa
  def initialize(name)
    @name=name
    @statues = []
  end

   def name
     @name
   end

  def statues
    @statues
  end

  def stare(victim)
    @statues << victim
    if @statues.count > 3
      @statues.shift.unstoned

    end
    victim.stoned
  end

end

class Person

  def initialize(name)
    @name= name
    @stoned = false
  end

  def name
    @name
  end

  def stoned?
    @stoned
  end

  def stoned
    @stoned= true
  end

   def unstoned?
    !stoned?
   end

   def unstoned
    @stoned=false

   end

end
