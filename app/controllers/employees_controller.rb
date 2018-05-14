class EmployeesController < ProtectedController
  def index
    @employees = Employee.all
    render json: @employees
  end

  def show
    render json: Employee.find(params[:id])
  end

  def create
    @employee = current_user.employees.build(employee_params)

    if @employee.save
      render json: @employee, status: :created
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  def update
    if Employee.find(params[:id]).update(employee_params)
      head :no_content
    else
      render json: @employee.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Employee.find(params[:id]).destroy

    head :no_content
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :dob, :wage_per_hour)
  end

end
