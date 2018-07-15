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
  end

  def edit
    @lecture = Lecture.find_by(id: params[:id])
  end

  def update
    @lecture = Lecture.find_by(id: params[:id])
    if @lecture.update
      flash[:notice] = "Your Lecture is updated"
    else
      flash.now[:notice] = "FAiled!"
    end

  end

  def destroy
    @lecture = Lecture.find_by(id: params[:id])
    @lecture.destroy
  end


  private

  def lecture_params
    params.require(:lecture).permit(:lecture_name, :semester, :credits)
  end
end
