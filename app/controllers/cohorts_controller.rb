class CohortsController < ApplicationController
  def index
    @cohort = Cohort.all
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def new
    @cohort = Cohort.new
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
  end

  def update
    @cohort = Cohort.find(params[:id])
 
    if @cohort.update(cohort_params)
      redirect_to @cohort
    else
      render 'new'
    end
  end

  def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy
    redirect_to cohorts_path
  end

  private
    def cohort_params
      params.require(:cohort).permit(:cohort_name, :cohort_start_date, :cohort_end_date)
    end

end
