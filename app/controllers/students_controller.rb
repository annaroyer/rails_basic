class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :destroy, :update]

  def show
  end

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "#{@student.name} created!"
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  def destroy
    @student.destroy
    redirect_to students_path
  end

  private
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name)
  end
end
