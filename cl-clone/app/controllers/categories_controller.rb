class CategoriesController < ApplicationController

  before_action :set_category, only: :show

  def index
    @categories = Category.all.order(:name)
  end

  def show
    @articles = @category.articles
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

end
