class CohortsController < ApplicationController
  def index
    @cohort = Cohort.all
    @cohort_size = Cohort.all.size
    
  end

  def show
    @cohort = Cohort.find(params[:id])
    cohortID = params[:id]
    @theCohort = CohortStudent.where(cohort_id:cohortID)
    @classSize = @theCohort.size
    @course = Course.all
    # @teacher = Teacher.find(params[:teachers_id]).map{ |t| [t.first_name + t.last_name, t.id]}
    @student = Student.all
    @costu = CohortStudent.where(params[:cohort_id])
  end
  
  def new
    @cohort = Cohort.new
    @coh_stu = CohortStudent.new
    @course = Course.all.map{ |c| [ c.course_name, c.id]}
    @teacher = Teacher.all.map{ |t| [t.first_name + t.last_name, t.id]}
  
    @student = Student.all
    puts @cohort.inspect
  end

  def create
    @cohort = Cohort.new(cohort_params)
    # cohortID = params[:id]
    # puts "Cohort-ID #{cohortID}"
    # stores student array below from form
    # studentID = params[:students_id]
    # puts studentID.class
    #   puts "Student_ID #{studentID}"
    #   changeToNum = studentID.map {|num| num.to_i}
    #   puts "Student_ID #{changeToNum}"
    #   @cs = CohortStudent.new
    #   changeToNum.each do |cS|
    #     @cs.cohort_id = cohortID
    #     @cs.student_id = cS
    #     puts @cs.student_id = cS
    #     @cs.save
    #     puts @cs.inspect
    #   end
    # @coh_stu = CohortStudent.new({cohort_id: studentID, student_id: cohortID})
    
    puts @cohort.inspect
    # @coh_stu.save
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
    # @cohort_id = Cohort.find(params[:id])
      puts "///////////////////////////"
      
      cohortID = params[:id]
      puts "Cohort-ID #{cohortID}"
      # stores student array below from form
      studentID = params[:students_id]
      puts studentID.class
        puts "Student_ID-as-strings #{studentID}"
        changeToNum = studentID.map {|num| num.to_i}
        puts "Student_ID-as-integers #{changeToNum}"
        # @cs = CohortStudent.new
        changeToNum.each do |cS|
          @cs = CohortStudent.new
          @cs.cohort_id = cohortID
          @cs.student_id = cS
          puts @cs.student_id = cS
          @cs.save
          puts @cs.inspect
        end
        
    if @cohort.update(cohort_params) 
      redirect_to @cohort
    else
      render 'index'
    end
  end

  def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy
    #whats the point!
    respond_to do |format|
      format.html {render redirect_to cohorts_path}
      format.js { render '/cohorts/index.js.erb'}
    end
    # redirect_to cohorts_path
    # redirect_to @cohort
  end

  private
    def cohort_params
      params.require(:cohort).permit(:cohort_name, :cohort_start_date, :cohort_end_date,
      :courses_id, :teachers_id)
    end
    def coh_stu_params
      params.require(:cohort_student).permit(:cohort_id, :student_id)
    end
    def student_params
      params.require(:student).permit(students_id:[])
    end
end
