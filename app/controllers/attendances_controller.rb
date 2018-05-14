class AttendancesController < ProtectedController
  def index
    @attendances = Attendance.all
    render json: @attendances
  end

  def show
    render json: Attendance.find(params[:id])
  end

  def create
    @attendance = current_user.attendances.build(attendance_params)

    if @attendance.save
      render json: @attendance, status: :created
    else
      render json: @attendance.errors, status: :unprocessable_entity
    end
  end

  def update
    if Attendance.find(params[:id]).update(attendance_params)
      head :no_content
    else
      render json: @attendance.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Attendance.find(params[:id]).destroy

    head :no_content
  end

  def attendance_params
    params.require(:attendance).permit(:date_attended, :hours_worked, :employee_id)
  end
end
