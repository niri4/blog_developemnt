class CommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.new(comment_params)
    if @comment.save
      redirect_to blog_path(@blog)
    else
      render 'blogs/show'
    end
  end

  def destroy
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.find(params[:id])
    @comment.destroy
    redirect_to blog_path(@blog)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :parent_id)
    end
end
