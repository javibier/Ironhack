class King
  
  def initialize (x, y, color)
      @x = x
      @y = y
      @color = color
  end

  def can_move?(new_x, new_y)

     if (new_x == @x && new_y == @y + 1) || (new_x == @x && new_y == @y - 1) || (new_x == @x -1 && new_y == @y) || (new_x == @x -1 && new_y == @y - 1) || (new_x == @x -1 && new_y == @y + 1) || (new_x == @x + 1 && new_y == @y) || (new_x == @x + 1 && new_y == @y - 1) || (new_x == @x + 1 && new_y == @y + 1)
      "yes"
     else
      "no"
     end
   end
end