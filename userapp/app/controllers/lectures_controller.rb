class LecturesController < InheritedResources::Base
  before_action :authenticate_user!
  private

    def lecture_params
      params.require(:lecture).permit(:content, :attachment, :course_id, :user_id,:upvote,:downvote)
    end

    def upvote
       @lecture.upvote_from current_user
       redirect_to lectures_path
    end

     def downvote
       @lecture.downvote_from current_user
       redirect_to lectures_path
     end
end

