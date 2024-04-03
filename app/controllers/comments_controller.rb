class CommentsController < ApplicationController
  before_action :set_post
  before_action :authenticate_user!
  

  def destroy
    @comment.destroy!

    respond_to do |format|
      # format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      # format.json { head :no_content }
    end
  end

   # POST /comments or /comments.json
   def create
    @comment = @post.comments.create(comment_params);
    @comment.user_id = current_user.id

    if @comment.save
      flash[:notice] = 'Your comment was left.'
      redirect_to post_path(@post)
    else
      flash[:alert] = 'Comment was not created.'
      redirect_to post_path(@post)

    end
   end
    

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:post_id])
    end
    
  def comment_params
    params.require(:comment).permit(:content)
  end

end
