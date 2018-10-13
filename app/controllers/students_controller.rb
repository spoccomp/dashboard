class StudentsController < ApplicationController
    def index
        @students = Student.all
      end
    
      def show
        @student = Student.find(params[:id])
      end

      def new
        @student = Student.new
        # @edu= Education.all.map{ |e| [ e.education, e.id]}
        # @edu = Education.all
      end

      def create
        @student = Student.new(student_params)
        puts @student.inspect
        if @student.save
          redirect_to students_path
        else
          # puts @student.errors.messages.join(',')
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
        @student = Student.find(params[:id])
        @student.destroy
        respond_to do |format|
          format.html {render redirect_to students_path}
          format.js { render '/courses/index.js.erb'}
        end
        # redirect_to students_path
      end
    
      private
        def student_params
          params.require(:student).permit(:username , :password, :first_name, :last_name,
          :age, :education)
        end
    
    end
