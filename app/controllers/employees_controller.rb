class EmployeesController < ApplicationController
  before_action :find_employee, only: [:show, :edit, :destroy]

  def index
    @employees = Employee.all.order("id ASC")
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create
    employee = Employee.new(employee_params)
    #@employee = Employee.create(employee_params)
    if employee.save
      redirect_to employee_path(employee.id)
    else
      redirect_to new_employee_path
    end
  end

  def edit
  end

  def update
    @employee = Employee.update(employee_params)
    if @employee.save
      flash[:success] = "Employee Successfully updated!"
      redirect_to @employee
    else
      flash[:error] = "Employee was not updated"
      render :edit
    end
  end

  def destroy 
    @employee.destroy
    redirect_to root_path
  end

  private

    def employee_params
      params.require(:employee).permit(:FirstName, :LastName, :Gender, :HiredDate, :Salary)
    end

    def find_employee
      @employee = Employee.find(params[:id])
    end

end
