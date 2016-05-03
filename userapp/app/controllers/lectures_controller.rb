class LecturesController < InheritedResources::Base
  before_action :authenticate_user!
  before_action :set_lecture, only: [:show, :edit, :update, :destroy, :upvote, :downvote]

    def upvote
       @lecture.upvote_from current_user
       redirect_to lectures
    end

     def downvote
       @lecture.downvote_from current_user
       redirect_to lectures_path
     end

  private
  def lecture_params
    params.require(:lecture).permit(:content, :attachment, :course_id, :user_id)
  end

  def set_lecture
    @lecture = Lecture.find(params[:id])
  end
end

