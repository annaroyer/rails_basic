class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :delete, :update]

  def show

  end

  def index
    @students = Student.all
  end

  private
  def set_student
    @student = Student.find(params[:id])
  end
end
