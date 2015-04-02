require_relative 'player'

class Game
    attr_reader :title

    def initialize(title)
        @title = title
        @players = []        
    end

    def add_player(var)
        @players << var
    end

    def play
        puts "There are #{@players.size} players in the #{@title}:"

        @players.each do |x|
            puts x
        end
        @players.each do |x|
            x.blam
            x.w00t
            x.w00t
            puts x
        end
    end
end