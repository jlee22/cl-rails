class ArticlesController < ApplicationController
  before_action :set_article

  def index
  end

  def show
  end

  def edit
  end

  def delete
  end

  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

end
