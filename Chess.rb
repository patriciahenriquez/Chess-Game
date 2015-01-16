board = ChessBoard.new

# movements = [["a2", "a3"],["a2", "a4"]]

# Validate from INITIAL positions only
# Later we will move pieces to new positions
# (update the piece positions as they move)
# if 

  if   board.move("a2", "a5")
    puts "Lega;"


    # puts "LEGAL"
# else
#     puts "ILLEGAL"
# end


########################################################


class ChessBoard
    def initialize (position, team)
        @pieces = {}
        @pieces["a2"] = Pawn.new("a2", "W")
        # @pieces["b2"] = Pawn.new
        # @pieces["c2"] = Pawn.new
        # @pieces["d2"] = Pawn.new
        # @pieces["e2"] = Pawn.new
        # @pieces["f2"] = Pawn.new 
        # @pieces["g2"] = Pawn.new
        # @pieces["h2"] = Pawn.new
        # @piece []
    end


 end

    def move(initial, final)
        currentpiece = @pieces[initial]
        return currentpiece.validmove(initial, final)
        
        
        #if pawn 
        #then 

        #if bishop 
    end
end

class Piece
attr_accessor:position :team

    def initialize (position, team)
        @position = self.decode(position)
        @team = team 
    end 

    def decode(position)

    split = position.split(//)

    if split[0] == "a"
    x= 1
    elsif split[0] == "b"
    x=2 
    elsif split[0] == "c"
    x =3 
    elsif split[0] == "d"
    x= 4
    elsif split[0] == "e"
    x=5 
    elsif split[0] == "f"
    x=6
    elsif split[0] == "g"
    x=7
    elsif split[0] == "h"
    x=8
    end 

    y= split[1]

    return {x: x, y: y.to_i}

    end

    def  view_position 
        puts @position 
    end
end

class Pawn < Piece 

    def validmove (currentposition, desiredposition)
        currentposition = self.decode(currentposition)
        desiredposition = self.decode (desiredposition)

        return (team == "W" && currentposition[:x] == desireposition[:x] && currentposition[:y] - currentposition[:y] == 1) ||
                (team == "B" && currentposition[:x] == desireposition[:x] && currentposition[:y] - currentposition[:y] == -1)

    

    # if initial movement, can move two spaces
end

