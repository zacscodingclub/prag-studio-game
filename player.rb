class Player
    #state
    attr_reader :health
    attr_accessor :name

    def initialize(name, health=100)
        @name = name.capitalize
        @health = health
    end
    
    #behavior
    def w00t
        @health += 15
        puts "#{@name} got w00ted!"
    end

    def blam
        @health -= 10
        puts "#{@name} got blammed!"
    end

    def score 
        @health + @name.length
    end

    def name=(new_name)
        @name = new_name.capitalize
    end

    def to_s
        "I'm #{@name} with health of #{@health} and a score of #{score}."
    end
end

if __FILE__==$0
    movie = Player.new("goonies",10)
    puts movie.name
end