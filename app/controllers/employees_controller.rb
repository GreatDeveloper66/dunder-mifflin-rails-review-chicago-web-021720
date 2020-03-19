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
    # I see a few places where this line appears. I think you could DRY things up by creating a new method...
    @employee = Employee.find(params[:id])
  end

  def update
    # I like how you've broken this flow into the happy vs sad path
    # Next step would be to add @employee.errors.full_messages to your 
    # erb view and iterate over the array to tell the user what went wrong.
    # This will also require adding more uniqueness validations to your model. 
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to employee_path
    else
      render :edit
    end
  end

  private
  # Good work with your strong params here. If your migrations were tweaked a bit, you could add :dog_id to this list
    def employee_params
      params.require(:employee).permit(:first_name,:last_name,:alias,:title,:office,:img_url)
    end

end
