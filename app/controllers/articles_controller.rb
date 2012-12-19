class ArticlesController < ApplicationController
  
  def index
    # raise flash.inspect
    @articles = Article.all
  end

  def show
    # throw params
    id = params[:id]
    @article = Article.find(id)
  end

  def new
    @article = Article.new
  end

  def create
    # article_params = params[:article]
    # article = Article.new
    # article.title = article_params[:title]
    # article.body = article_params[:body]
    # article.save

    # article = Article.new(params[:article])
    # article.save

    article = Article.create(article_params)  
    redirect_to article_path(article)
    # debugger
    # ""
  end

  def destroy
    id = params[:id]
    Article.delete(id)
    flash[:notice] = "Successfully DELETED article!"
    redirect_to articles_path()
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update

    @article = Article.find(params[:id])
    @article.update_attributes article_params
    @article.save

    flash[:notice] = "Successfully UPDATED article"
    redirect_to article_path(@article)
  end

  def article_params
    params[:article].permit(:title, :body)
  end


end
