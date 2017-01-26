class CommentsController < ApplicationController
  def create

      @post = Post.find(params[:post_id])   

      respond_to do |format|
        if @post.comments.create(params.require(:comment).permit(:author, :body))
          format.html { redirect_to @post, notice: 'Comment added' }
        else
          format.html { redirect_to @post, notice: 'Fail adding comment ' } # +@post.errors }
        end
      end
   end
    def destroy
      @post = Post.find(params[:post_id])
      @comment = @post.comments.find(params[:id])
      @comment.destroy
      redirect_to post_path(@post)
    end

end
