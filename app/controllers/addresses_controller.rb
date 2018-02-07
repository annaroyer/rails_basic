class AddressesController < ApplicationController
  before_action :set_student, only: [:new, :create]

  def new
    @address = @student.addresses.new
  end

  def create
    @student.addresses.create(address_params)
    redirect_to student_path(@student)
  end

  private
  def set_student
    @student = Student.find(params[:student_id])
  end

  def address_params
    params.require(:address).permit(:description, :street, :city, :state, :zip_code)
  end
end
