require 'rails_helper'

describe Yogurt do

	it "should have flavor, topping, or quantity" do
		yogurt = Yogurt.new(flavor: "strawberry")
		expect(yogurt).to be_valid
    end

	it "should have flavor, topping, or quantity" do
		yogurt = Yogurt.new(topping: "fruits")
		expect(yogurt).to be_valid
		yogurt = Yogurt.new(quantity: "1")
		expect(yogurt).to be_valid
	end

	it "can have flavor" do
		yogurt = Yogurt.new(flavor: true)
		expect(yogurt.flavor?).to be(true)
	end
		it "can have topping" do
		yogurt = Yogurt.new(topping: true)
		expect(yogurt.topping?).to be(true)
	end
end

