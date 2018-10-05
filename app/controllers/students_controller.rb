class StudentsController < ApplicationController
    def index
        @students = Student.all
      end
    
      def show
        @student = Student.find(params[:id])
      end

      def new
        @student = Student.new
      end

      def create
        @student = Student.new(student_params)
        puts @student.inspect
        if @student.save
          redirect_to students_path
        else
          puts @student.errors.messages.join(',')
          render "new"
        end
      end
       
      def edit
        @student = Student.find(params[:id])
      end
    
      def update
        @student = Student.find(params[:id])
     
        if @student.update(student_params)
          redirect_to @student
        else
          render 'new'
        end
      end
    
      def destroy
        @student = Student.fine(params[:id])
        @student.destroy
        redirect_to students_path
      end
    
      private
        def student_params
          params.require(:student).permit(:username , :password, :first_name, :last_name,
          :age, :edu_level)
        end
    
    end
