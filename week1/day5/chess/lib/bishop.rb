class Bishop
  
  def initialize (x, y, color)
      @x = x
      @y = y
      @color = color
  end

  def can_move?(new_x, new_y)

     if (new_x == @x - 1 && new_y == @y - 1) || (new_x == @x - 1 && new_y == @y + 1) || (new_x == @x - 2 && new_y == @y - 2) || (new_x == @x - 2 && new_y == @y + 2) || (new_x == @x + 1 && new_y == @y - 1) || (new_x == @x + 1 && new_y == @y + 1) || (new_x == @x + 2 && new_y == @y + 2) || (new_x == @x + 2 && new_y == @y - 2)
      "yes"
     else
      "no"
     end
   end
end

# black_bishop_right = Bishop.new(8, 6, "black")
# black_bishop_left = Bishop.new(8, 3, "black")
# white_bishop_right = Bishop.new(1, 6, "white")
# white_bishop_left = Bishop.new(1, 3, "white")


# puts "Valid Bishop movements"

# p black_bishop_right.can_move?(7, 5)
# p black_bishop_right.can_move?(6, 4)
# p black_bishop_right.can_move?(7, 7)
# p black_bishop_right.can_move?(6, 8)
# p black_bishop_left.can_move?(7, 2)
# p black_bishop_left.can_move?(6, 1)
# p black_bishop_left.can_move?(7, 4)
# p black_bishop_left.can_move?(6, 5)
# p white_bishop_right.can_move?(2, 5)
# p white_bishop_right.can_move?(3, 4)
# p white_bishop_right.can_move?(2, 7)
# p white_bishop_right.can_move?(3, 8)
# p white_bishop_left.can_move?(2, 2)
# p white_bishop_left.can_move?(3, 1)
# p white_bishop_left.can_move?(2, 4)
# p white_bishop_left.can_move?(3, 5)

# puts "Invalid Bishop movements"