class Yogurt < ActiveRecord::Base
	validates_inclusion_of :flavor, in: ["strawberry", "original", "vanilla"]

	def has_flavor?
		self.flavor
	end

	def as_json(options={})
		super(:only => [:id, :flavor, :topping, :quantity])
	end
end
