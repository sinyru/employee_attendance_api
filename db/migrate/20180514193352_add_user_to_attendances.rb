class AddUserToAttendances < ActiveRecord::Migration[5.0]
  def change
    add_reference :attendances, :user, foreign_key: true
  end
end
