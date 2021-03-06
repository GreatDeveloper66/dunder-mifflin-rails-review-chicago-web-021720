class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end
  def show
    @employee = Employee.find_by(id: params[:id])
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    Employee.create(employee_params)
    redirect_to employees_path

  end
  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to employee_path
    else
      render :edit
    end
  end

  private

    def employee_params
      params.require(:employee).permit(:first_name,:last_name,:alias,:title,:office,:img_url)
    end

end
