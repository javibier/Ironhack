class ProductsController < ApplicationController

    def home

		render 'home'

    end

    def index

        @products = Product.order(:title)

    end

    def create

        product = Product.new(
        :title => params[:product][:title],
        :description => params[:product][:description],
        :deadline => params[:product][:deadline])

      product.save
      redirect_to("/products")


    end

    def destroy


    end
end
