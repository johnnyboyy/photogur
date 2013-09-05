class CommentsController < ApplicationController

  def create    
    @picture = Picture.find(params[:picture_id])
    @comment = @picture.comments.create(params[:comment].permit(:name, :body))
    redirect_to picture_path(@picture)
  end

  def update
  end

  def destroy
    @picture = Picture.find(params[:picture_id])
    @comment = @picture.comments.find(params[:id])
    @comment.destroy
    redirect_to picture_path(@picture)
  end
end
