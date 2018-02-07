class AddressesController < ApplicationController
  before_action :set_student, only: :new

  def new
    @address = @student.addresses.new
  end

  private
  def set_student
    @student = Student.find(params[:student_id])
  end
end
