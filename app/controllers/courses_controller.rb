class CoursesController < ApplicationController
  
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    puts @course.inspect
    if @course.save
      redirect_to courses_path
    else
      # puts @course.errors.messages.join(',')
      render "new"
    end
  end
   
  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    puts @course.inspect
    if @course.update(course_params)
      redirect_to @course
    else
      # puts @course.errors.messages.join(',')
      render 'new'
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    respond_to do |format|
      format.html {render redirect_to courses_path}
      format.js { render '/courses/index.js.erb'}
    end

    # redirect_to courses_path
  end

  private
    def course_params
      params.require(:course).permit(:course_name, :course_hours)
    end

end
