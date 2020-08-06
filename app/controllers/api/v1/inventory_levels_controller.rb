module Api::V1
	class InventoryLevelsController < ApplicationController
	  def index
	  	@product = Product.find(params[:product_id])
	  	@inventory_levels = @product.inventory_levels
	  	render json: @inventory_levels
	  end
	end
end
