class Wizard
    def initialize (name, bearded= true)
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
    if x = "chown ~/bin"
      puts "sudo chown ~/bin"
    elsif "rm -rf /home/mirandax"
      puts "sudo rm -rf /home/mirandax"
    end
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
