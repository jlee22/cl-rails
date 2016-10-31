class CategoriesController < ApplicationController

  before_action :set_category

  def index
    @categories = Category.all.order(:name)
  end

  def show

  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

end
