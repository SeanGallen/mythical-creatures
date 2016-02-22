class Wizard
    def initialize (name, bearded: true)
      @name = name
      @bearded = bearded
    end
    def name
      @name
    end
    def bearded
      @bearded
    end
    def bearded?
     @bearded
    end
  def incantation(x)
   "sudo #{x}"
  end
  def rested?
    true
  end
end

=begin

def say(message)
 "*&& #{message} $$"
 end

=end
