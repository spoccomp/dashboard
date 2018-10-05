class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def change
    @teachers = Teacher.all
  end

  def show
       @teacher  = Teacher.find(params[:id])
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher= Teacher.new(teacher_params)
    puts @teacher.inspect
    if @teacher.save
      redirect_to teachers_path
    else
      # puts @teacher.errors.messages.join(',')
      render "new"
  end
end

  
  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    #@teacher_params.inspect
    if @teacher.update(teacher_params)
      redirect_to @teacher
    else
       render 'new' 
    end
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
 
    redirect_to teachers_path
  end

  private
    def teacher_params
      params.require(:teacher).permit(:username , :password, :first_name, :last_name,
      :age, :salary, :edu_level)
    end

end

