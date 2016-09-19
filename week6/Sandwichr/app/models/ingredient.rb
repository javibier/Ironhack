class Ingredient < ApplicationRecord

	has_many :sandwich_ingredients
	has_many :sandwishes, through: "sandwich_ingredients"
end
