class Api::YogurtsController < ApplicationController

skip_before_filter :verify_authenticity_token
 respond_to :html, :xml, :json

  def index
    @yogurts = Yogurt.all
    respond_with @yogurts
  end

  def show
    @yogurt = Yogurt.find(params[:id])
    respond_with @yogurt
  end

  def create
    @yogurt = Yogurt.create(params.require(:yogurt).permit(:flavor, :topping, :quantity))
    respond_with @yogurt
  end
end
