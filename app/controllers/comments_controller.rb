class CommentsController < ApplicationController
  
  def new

  	@comment = Comment.new

  end
  
  def create
    
    @comment = Comment.new(params[:comment])
    @article = @comment.article_id

    if @comment.save

    redirect_to article_path(@article)

    else
    
    render 'new'

    end

  end

  def index
  end
end
