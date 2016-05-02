class CommentsController < InheritedResources::Base
  before_action :authenticate_user!
  private

    def comment_params
      params.require(:comment).permit(:comment, :lecture_id, :user_id)
    end
end

