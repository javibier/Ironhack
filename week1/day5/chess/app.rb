require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")


black_rook_left = Rook.new(1, 8, "black")
white_rook_right = Rook.new(8, 1, "white")

puts "Valid Rook movements"

p black_rook_left.can_move?(1, 5) == "yes"
p black_rook_left.can_move?(5, 8) == "yes"
p white_rook_right.can_move?(8, 3) == "yes"
p white_rook_right.can_move?(2, 1) == "yes"

puts "Invalid Rook movements"

p black_rook_left.can_move?(2, 7) == "no"
p black_rook_left.can_move?(2, 5) == "no"
p white_rook_right.can_move?(3, 5) == "no"
p white_rook_right.can_move?(5, 6) == "no"

black_king_left = King.new(8, 4, "black")
white_king_right = King.new(1, 5, "white")

puts "Valid King movements"

p black_king_left.can_move?(8, 3) == "yes"
p black_king_left.can_move?(8, 5) == "yes"
p black_king_left.can_move?(7, 3) == "yes"
p black_king_left.can_move?(7, 4) == "yes"
p black_king_left.can_move?(7, 5) == "yes"
p white_king_right.can_move?(1, 4) == "yes"
p white_king_right.can_move?(1, 6) == "yes"
p white_king_right.can_move?(2, 4) == "yes"
p white_king_right.can_move?(2, 5) == "yes"
p white_king_right.can_move?(2, 6) == "yes"

puts "Invalid King movements"

p black_king_left.can_move?(8, 2) == "no"
p black_king_left.can_move?(7, 2) == "no"
p black_king_left.can_move?(6, 2) == "no"
p black_king_left.can_move?(6, 3) == "no"
p black_king_left.can_move?(6, 4) == "no"
p black_king_left.can_move?(6, 5) == "no"
p black_king_left.can_move?(6, 6) == "no"
p black_king_left.can_move?(7, 6) == "no"
p black_king_left.can_move?(8, 6) == "no"
p white_king_right.can_move?(1, 3) == "no"
p white_king_right.can_move?(2, 3) == "no"
p white_king_right.can_move?(3, 3) == "no"
p white_king_right.can_move?(3, 4) == "no"
p white_king_right.can_move?(3, 5) == "no"
p white_king_right.can_move?(3, 6) == "no"
p white_king_right.can_move?(3, 7) == "no"
p white_king_right.can_move?(2, 7) == "no"
p white_king_right.can_move?(1, 7) == "no"

black_knight_right = Knight.new(8, 2, "black")
black_knight_left = Knight.new(8, 7, "black")
white_knight_right = Knight.new(1, 2, "white")
white_knight_left = Knight.new(1, 7, "white")

puts "Valid Knight movements"

p black_knight_right.can_move?(6, 1) == "yes"
p black_knight_right.can_move?(6, 3) == "yes"
p black_knight_right.can_move?(7, 4) == "yes"
p black_knight_left.can_move?(6, 6) == "yes"
p black_knight_left.can_move?(6, 8) == "yes"
p black_knight_left.can_move?(7, 5) == "yes"
p white_knight_right.can_move?(3, 1) == "yes"
p white_knight_right.can_move?(3, 3) == "yes"
p white_knight_right.can_move?(2, 4) == "yes"
p white_knight_left.can_move?(3, 6) == "yes"
p white_knight_left.can_move?(3, 8) == "yes"
p white_knight_left.can_move?(2, 5) == "yes"

puts "Invalid Knight movements"

p black_knight_left.can_move?(1, 1) == "no"
p black_knight_left.can_move?(1, 3) == "no"
p black_knight_left.can_move?(2, 1) == "no"
p black_knight_left.can_move?(2, 3) == "no"
p black_knight_left.can_move?(3, 2) == "no"

black_bishop_right = Bishop.new(8, 6, "black")
black_bishop_left = Bishop.new(8, 3, "black")
white_bishop_right = Bishop.new(1, 6, "white")
white_bishop_left = Bishop.new(1, 3, "white")

puts "Valid Bishop movements"

p black_bishop_right.can_move?(7, 5) == "yes"
p black_bishop_right.can_move?(6, 4) == "yes"
p black_bishop_right.can_move?(7, 7) == "yes"
p black_bishop_right.can_move?(6, 8) == "yes"
p black_bishop_left.can_move?(7, 2) == "yes"
p black_bishop_left.can_move?(6, 1) == "yes"
p black_bishop_left.can_move?(7, 4) == "yes"
p black_bishop_left.can_move?(6, 5) == "yes"
p white_bishop_right.can_move?(2, 5) == "yes"
p white_bishop_right.can_move?(3, 4) == "yes"
p white_bishop_right.can_move?(2, 7) == "yes"
p white_bishop_right.can_move?(3, 8) == "yes"
p white_bishop_left.can_move?(2, 2) == "yes"
p white_bishop_left.can_move?(3, 1) == "yes"
p white_bishop_left.can_move?(2, 4) == "yes"
p white_bishop_left.can_move?(3, 5) == "yes"

puts "Invalid Bishop movements"

p black_bishop_right.can_move?(8, 5) == "no"
p black_bishop_right.can_move?(8, 7) == "no"
p black_bishop_left.can_move?(8, 2) == "no"
p black_bishop_left.can_move?(8, 4) == "no"
p white_bishop_right.can_move?(1, 5) == "no"
p white_bishop_right.can_move?(1, 7) == "no"
p white_bishop_left.can_move?(1, 2) == "no"
p white_bishop_left.can_move?(1, 4) == "no"


black_queen = Queen.new(8, 5, "black")
white_queen = Queen.new(1, 4, "white")

puts "Valid Queen movements"

p black_queen.can_move?(8, 4) == "yes"
p black_queen.can_move?(7, 4) == "yes"
p black_queen.can_move?(7, 5) == "yes"
p black_queen.can_move?(7, 6) == "yes"
p black_queen.can_move?(8, 6) == "yes"
p white_queen.can_move?(1, 3) == "yes"
p white_queen.can_move?(2, 3) == "yes"
p white_queen.can_move?(2, 4) == "yes"
p white_queen.can_move?(2, 5) == "yes"
p white_queen.can_move?(1, 5) == "yes"

puts "Invalid Queen movements"

p black_queen.can_move?(7, 3) == "no"
p black_queen.can_move?(7, 7) == "no"
p black_queen.can_move?(6, 2) == "no"
p white_queen.can_move?(2, 2) == "no"
p white_queen.can_move?(2, 6) == "no"
p white_queen.can_move?(3, 7) == "no"

black_pawn_right = Pawn.new(7, 8, "black")
black_pawn_left = Pawn.new(7, 1, "black")
white_pawn_right = Pawn.new(2, 8, "white")
white_pawn_left = Pawn.new(2, 1, "white")

puts "Valid Pawn movements"

p black_pawn_right.can_move?(5, 8) == "yes"
p black_pawn_right.can_move?(5, 7) == "yes"
p black_pawn_right.can_move?(4, 7) == "yes"
p black_pawn_right.can_move?(4, 8) == "yes"
p black_pawn_left.can_move?(5, 1) == "yes"
p black_pawn_left.can_move?(5, 2) == "yes"
p black_pawn_left.can_move?(4, 2) == "yes"
p black_pawn_left.can_move?(4, 1) == "yes"
p white_pawn_right.can_move?(4, 8) == "yes"
p white_pawn_right.can_move?(4, 7) == "yes"
p white_pawn_right.can_move?(5, 7) == "yes"
p white_pawn_right.can_move?(5, 8) == "yes"
p white_pawn_left.can_move?(4, 1) == "yes"
p white_pawn_left.can_move?(5, 1) == "yes"
p white_pawn_left.can_move?(5, 2) == "yes"
p white_pawn_left.can_move?(4, 2) == "yes"

puts "Invalid Pawn movements"

p black_pawn_right.can_move?(7, 7) == "no"
p black_pawn_right.can_move?(7, 6) == "no"
p black_pawn_right.can_move?(7, 5) == "no"
p black_pawn_right.can_move?(6, 6) == "no"
p black_pawn_left.can_move?(7, 2) == "no"
p black_pawn_left.can_move?(7, 3) == "no"
p black_pawn_left.can_move?(7, 4) == "no"
p black_pawn_left.can_move?(6, 3) == "no"
p white_pawn_right.can_move?(2, 7) == "no"
p white_pawn_right.can_move?(2, 6) == "no"
p white_pawn_right.can_move?(2, 5) == "no"
p white_pawn_right.can_move?(3, 6) == "no"
p white_pawn_left.can_move?(2, 2) == "no"
p white_pawn_left.can_move?(2, 3) == "no"
p white_pawn_left.can_move?(2, 4) == "no"
p white_pawn_left.can_move?(3, 3) == "no"


