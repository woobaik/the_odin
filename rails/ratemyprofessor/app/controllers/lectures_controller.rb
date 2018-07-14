class LecturesController < ApplicationController

  def index
    @lectures = Lecture.all
  end

  def new
    @lecture = Lecture.new

  end

  def create
    @lecture = Lecture.new(lecture_params)
    if @lecture.save
      flash[:notice] = 'Your article is successfully added'
      redirect_to lecture_path
    else
      flash.now[:notice] = 'Ooops, there was a problem creating lecture list'
      render :lecture => :new
  end

  def edit
    @lecture = Lecture.find_by(id: params[:id])
  end

  def update

  end

  def destroy
  end


  private

  def lecture_params
    params.require(:lecture).permit(:lecture_name, :semester, :credits)
  end
end
