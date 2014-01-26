class ArticlesController < ApplicationController
  def new

   @scott = Article.new

  end
  
  def create
     
    #render json: params

    @article = Article.find(params[:article])
  
  if @article.save

    redirect_to root_path

  else
    
    render 'new'

  end

  end

  def show
  end

  def edit
  end
  
  def index

  @articles = Article.all

  end


end
