class Hobbit
    def initialize (name, disposition="homebody" )
      @name = name
      @disposition = disposition
      @age = 0

    end

     def name
        @name
     end

    def disposition
      @disposition
    end

    def age
      @age
     end

    def celebrate_birthday
     @age += 1
    end

    def adult?
      if @age >= 33
         true
      else false
      end
    end

    def old?
      if age >100
        puts true
      end
    end

    def is_short?
      true
    end

    def has_ring?
      if name = "Frodo"
        puts true
      else false
      end
    end

end
