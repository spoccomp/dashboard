
class CohortStudentController < ApplicationController
def new
    @coh_stu = CohortStudent.new
    # @course = Course.all.map{ |c| [ c.course_name, c.id]}
    # @teacher = Teacher.all.map{ |t| [t.first_name + t.last_name, t.id]}
  
    # @student = Student.all
    # puts @cohort.inspect
  end

  def create
    # @cohort = Cohort.new(cohort_params)
    cohortID = params[:id]
      puts cohortID
      studentID = params[:students_id]
      puts studentID
    @coh_stu = CohortStudent.new({cohort_id: studentID, student_id: cohortID})
    
    puts @cohort.inspect
    # @coh_stu.save
   if @coh_stu.save
       
      redirect_to cohorts_path
   else
       render 'new'
   end   
  end
end