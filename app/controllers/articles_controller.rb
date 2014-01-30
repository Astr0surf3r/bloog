class ArticlesController < ApplicationController
  def new

   @article = Article.new

  end
  
  def create
     
  #render json: params
  @article = Article.new(params[:article]) 
  #@article = Article.create(params[:article])
  
  if @article.save

    redirect_to root_path

  else
    
    render 'new'

  end

  end

  def show

   @article = Article.find(params[:id])
   @comments = @article.comments

   session[:article_id] = @article.id

  end

  def edit
  end
  
  def index

  @articles = Article.all

  end


end
