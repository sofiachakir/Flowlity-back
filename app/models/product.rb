class Product < ApplicationRecord
	has_many :inventory_levels

	def inventory_levels_data
		self.inventory_levels.map do |inventory_level|
			{
				product_id: self.id,
				product_name: self.name,
				date: inventory_level.date,
				inventory_level: inventory_level.inventory_level
			}
		end
	end
end
