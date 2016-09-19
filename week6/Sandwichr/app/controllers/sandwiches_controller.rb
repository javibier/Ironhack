class SandwichesController < ApplicationController

	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def add
        the_sandwich = Sandwich.find_by(id: params[:id])
        the_ingredient = Ingredient.find(params[:ingredient][:id])

        the_sandwich.ingredients.push(the_ingredient)

	end	


	def show
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich not found"},
			   status: 404
			return
	    end
	    render json: [sandwich, sandwich.ingredients.all]
	end

	def update
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich not found"},
			   status: 404
			return
	    end
	    sandwich.update(sandwich_params)
	    render json: sandwich
	end

	def destroy
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich not found"},
			   status: 404
			return
	    end
	    sandwich.destroy
	    render json: sandwich
		
	end

	private

	def sandwich_params
		params.require(:sandwich)
		  .permit(:name, :bread_type)
	end


end
