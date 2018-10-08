class CohortsController < ApplicationController
  def index
    @cohort = Cohort.all
    @cohort_size = Cohort.all.size
  end

  def show
    @cohort = Cohort.find(params[:id])
    @course = Course.all
    # @teacher = Teacher.find(params[:teachers_id]).map{ |t| [t.first_name + t.last_name, t.id]}
    @student = Student.all
  end
  
  def new
    @cohort = Cohort.new
    @course = Course.all.map{ |c| [ c.course_name, c.id]}
    @teacher = Teacher.all.map{ |t| [t.first_name + t.last_name, t.id]}
    # @student = Student.all.map{ |s| [s.first_name + s.last_name, s.id]}
    @student = Student.all
  end

  def create
    @cohort = Cohort.new(cohort_params)
    puts @cohort.inspect
      
   if @cohort.save
      redirect_to cohorts_path
   else
       render 'new'
   end
  end
   
  def edit
    @cohort = Cohort.find(params[:id])
    @course = Course.all.map{ |c| [ c.course_name, c.id]}
    @teacher = Teacher.all.map{ |t| [t.first_name + t.last_name, t.id]}
    @student = Student.all
  end

  def update
    @cohort = Cohort.find(params[:id])
 
    if @cohort.update(cohort_params)
      redirect_to @cohort
    else
      render 'index'
    end
  end

  def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy
    redirect_to cohorts_path
  end

  private
    def cohort_params
      params.require(:cohort).permit(:cohort_name, :cohort_start_date, :cohort_end_date,
      :courses_id, :teachers_id, students_id:[])
    end
    def student_params
      params.require(:student).permit(students_id:[])
    end
end
