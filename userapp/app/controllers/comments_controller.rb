class CommentsController < InheritedResources::Base

  private

    def comment_params
      params.require(:comment).permit(:comment, :lecture_id, :user_id)
    end
end

