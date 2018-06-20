class ArticlesController < ApplicationController
  include ArticlesHelper
  def index
    @articles = Article.all
  end

  def show
    find_article
    @comment = Comment.new
    @comment.article_id = @article.id
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def edit
    find_article
  end

  def update
    find_article
    if @article.update(article_params)
      flash[:notice] = "Article #{@article.title} is updated!"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def destroy
    find_article
    @article.destroy
  end




end
