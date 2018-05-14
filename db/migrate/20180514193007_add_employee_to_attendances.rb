class AddEmployeeToAttendances < ActiveRecord::Migration[5.0]
  def change
    add_reference :attendances, :employee, foreign_key: true
  end
end
