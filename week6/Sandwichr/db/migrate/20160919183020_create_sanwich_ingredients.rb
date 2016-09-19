class CreateSanwichIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :sanwich_ingredients do |t|

      t.timestamps
    end
  end
end
