class CommentsController < ApplicationController
  
  def new

  	@comment = Comment.new

  end

  def index
  end
end
