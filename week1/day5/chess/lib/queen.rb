class Queen
  
  def initialize (x, y, color)
      @x = x
      @y = y
      @color = color
  end

  def can_move?(new_x, new_y)

     if (new_x == @x && new_y == @y - 1) || (new_x == @x && new_y == @y + 1) || (new_x == @x - 1 && new_y == @y - 1) || (new_x == @x - 1 && new_y == @y) || (new_x == @x - 1 && new_y == @y + 1) || (new_x == @x + 1 && new_y == @y + 1) || (new_x == @x + 1 && new_y == @y) || (new_x == @x + 1 && new_y == @y - 1)
      "yes"
     else
      "no"
     end
   end
end



# class Queen
  
#   def initialize (x, y, color)
#       @x = x
#       @y = y
#       @color = color
#   end

#   def can_move?(new_x, new_y)

#      if (new_x == @x) || (new_y == @y)
#       "yes"
#      elsif ((new_x - @x).abs || (new_y - @y).abs)
#       "yes"
#      else
#       "no"
#      end
#    end
# end

# black_queen = Queen.new(8, 5, "black")
# white_queen = Queen.new(1, 4, "white")


# puts "Valid Queen movements"

# p black_queen.can_move?(8, 4)
# p black_queen.can_move?(7, 4)
# p black_queen.can_move?(7, 5)
# p black_queen.can_move?(7, 6)
# p black_queen.can_move?(8, 6)

# p white_queen.can_move?(1, 3)
# p white_queen.can_move?(2, 3)
# p white_queen.can_move?(2, 4)
# p white_queen.can_move?(2, 5)
# p white_queen.can_move?(1, 5)


# puts "Invalid Queen movements"