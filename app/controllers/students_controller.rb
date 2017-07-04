class StudentsController < ApplicationController
  
  def new
    @student = Student.new
  end
  
  def create
    @student = Student.create(student_params)
    if @student.save
      flash[:notice] = "Student record was created"
      redirect_to student_path(@student)
    else
      render 'new'
    end
  end
  
  def show
    @student = Student.find(params[:id])
  end
  
  private
  
  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :primary_instrument, :secondary_instrument, :active)
  end
end