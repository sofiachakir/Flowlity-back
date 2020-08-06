module Api::V1
	class ProductsController < ApplicationController
		# Get /api/v1/products
	  def index
	  	@products = Product.all
	  	render json: @products
	  end
	end
end
