class ArticlesController < ApplicationController
  before_action :set_category_and_article, only: [:show, :edit, :update, :destroy]
  before_action :set_category_and_new_article, only: [:new]

  def new
  end

  def show
  end

  def create
    @article = Article.new(article_params)
    @category = Category.find(params[:category_id])
    @article.category = @category
    @article.category_id = @category.id
    if @article.save
      redirect_to category_path(@category)
    else
      @errors = @article.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to category_article_path(@article)
  end


  def destroy
    @article.destroy
    redirect_to '/'
  end


  private

  def set_category_and_article
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
  end

  def set_category_and_new_article
    @category = Category.find(params[:category_id])
    @article = Article.new
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :email, :price)
  end

end
