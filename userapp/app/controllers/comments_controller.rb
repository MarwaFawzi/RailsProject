class CommentsController < InheritedResources::Base
  before_action :authenticate_user!
  before_action :find_lecture

  def create
    @comment= @lecture.comments.create(params[:comment].permit(:comment))
    @comment.user_id = current_user.id


      if @comment.save
        redirect_to lecture_comments_path(@lecture)
      else
        render 'new'
      end
    end

  private

    def comment_params
      params.require(:comment).permit(:comment)
    end

  def find_lecture
    @lecture = Lecture.find(params[:lecture_id])
  end


end

