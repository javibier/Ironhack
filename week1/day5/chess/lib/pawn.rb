class Pawn
  
  def initialize (x, y, color)
      @x = x
      @y = y
      @color = color
  end

  def can_move?(new_x, new_y)

     if (new_x == @x - 2 && new_y == @y) || (new_x == @x + 2 && new_y == @y) || (new_x == @x - 3 && new_y == @y) || (new_x == @x + 3 && new_y == @y) ||(new_x == @x + 2 && new_y == @y - 1) || (new_x == @x - 2 && new_y == @y -1) || (new_x == @x - 3 && new_y == @y - 1) || (new_x == @x - 2 && new_y == @y + 1) || (new_x == @x - 3 && new_y == @y + 1) || (new_x == @x + 2 && new_y == @y + 1) || (new_x == @x + 3 && new_y == @y + 1) || (new_x == @x + 3 && new_y == @y - 1)
      "yes"
     else
      "no"
     end
   end
end

# black_pawn_right = Pawn.new(7, 8, "black")
# black_pawn_left = Pawn.new(7, 1, "black")
# white_pawn_right = Pawn.new(2, 8, "white")
# white_pawn_left = Pawn.new(2, 1, "white")

# puts "Valid Bishop movements"

# p black_pawn_right.can_move?(5, 8)
# p black_pawn_right.can_move?(5, 7)
# p black_pawn_right.can_move?(4, 7)
# p black_pawn_right.can_move?(4, 8)
# p black_pawn_left.can_move?(5, 1)
# p black_pawn_left.can_move?(5, 2)
# p black_pawn_left.can_move?(4, 2)
# p black_pawn_left.can_move?(4, 1)
# p white_pawn_right.can_move?(4, 8)
# p white_pawn_right.can_move?(4, 7)
# p white_pawn_right.can_move?(5, 7)
# p white_pawn_right.can_move?(5, 8)
# p white_pawn_left.can_move?(4, 1)
# p white_pawn_left.can_move?(5, 1)
# p white_pawn_left.can_move?(5, 2)
# p white_pawn_left.can_move?(4, 2)

# puts "Invalid Bishop movements"

# p black_pawn_right.can_move?(7, 7)
# p black_pawn_right.can_move?(7, 6)
# p black_pawn_right.can_move?(7, 5)
# p black_pawn_right.can_move?(6, 6)
# p black_pawn_left.can_move?(7, 2)
# p black_pawn_left.can_move?(7, 3)
# p black_pawn_left.can_move?(7, 4)
# p black_pawn_left.can_move?(6, 3)
# p white_pawn_right.can_move?(2, 7)
# p white_pawn_right.can_move?(2, 6)
# p white_pawn_right.can_move?(2, 5)
# p white_pawn_right.can_move?(3, 6)
# p white_pawn_left.can_move?(2, 2)
# p white_pawn_left.can_move?(2, 3)
# p white_pawn_left.can_move?(2, 4)
# p white_pawn_left.can_move?(3, 3)