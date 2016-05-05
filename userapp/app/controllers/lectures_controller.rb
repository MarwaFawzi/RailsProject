class LecturesController < InheritedResources::Base
  before_action :authenticate_user!
  before_action :set_lecture, only: [:show, :edit, :update, :destroy, :upvote, :downvote,:download]


  def create
    @lecture= Lecture.new(lecture_params)
    @lecture.user_id = current_user.id

    respond_to do |format|
      if @lecture.save
        format.html { redirect_to @lecture, notice: 'Lecture was successfully created.' }
        format.json { render :show, status: :created, location: @lecture }
      else
        format.html { render :new }
        format.json { render json: @lecture.errors, status: :unprocessable_entity }
      end
    end
  end



  def upvote
       @lecture.upvote_from current_user
       redirect_to lectures_path
    end

     def downvote
       @lecture.downvote_from current_user
       redirect_to lectures_path
     end

  def download
    seekedfile = @lecture.attachment.path
    send_file seekedfile
  end

  private
  def lecture_params
    params.require(:lecture).permit(:content, :attachment, :course_id)
  end

  def set_lecture
    @lecture = Lecture.find(params[:id])
  end


end

