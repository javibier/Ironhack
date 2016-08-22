class Knight
  
  def initialize (x, y, color)
      @x = x
      @y = y
      @color = color
  end

  def can_move?(new_x, new_y)

     if (new_x == @x + 2 && new_y == @y - 1) || (new_x == @x + 2 && new_y == @y + 1) || (new_x == @x + 1 && new_y == @y + 2) || (new_x == @x + 1 && new_y == @y - 2) || (new_x == @x - 2 && new_y == @y - 1) || (new_x == @x - 2 && new_y == @y + 1) || (new_x == @x - 1 && new_y == @y + 2) || (new_x == @x - 1 && new_y == @y - 2)
      "yes"
     else
      "no"
     end
   end
end

# black_knight_right = Knight.new(8, 2, "black")
# black_knight_left = Knight.new(8, 7, "black")
# white_knight_right = Knight.new(1, 2, "white")
# white_knight_left = Knight.new(1, 7, "white")


# puts "Valid Knight movements"

# p black_knight_right.can_move?(6, 1)
# p black_knight_right.can_move?(6, 3)
# p black_knight_right.can_move?(7, 4)
# p black_knight_left.can_move?(6, 6)
# p black_knight_left.can_move?(6, 8)
# p black_knight_left.can_move?(7, 5)
# p white_knight_right.can_move?(3, 1)
# p white_knight_right.can_move?(3, 3)
# p white_knight_right.can_move?(2, 4)
# p white_knight_left.can_move?(3, 6)
# p white_knight_left.can_move?(3, 8)
# p white_knight_left.can_move?(2, 5)

# puts "Invalid Knight movements"

# p black_knight_left.can_move?(1, 1)
# p black_knight_left.can_move?(1, 3)
# p black_knight_left.can_move?(2, 1)
# p black_knight_left.can_move?(2, 3)
# p black_knight_left.can_move?(3, 2)