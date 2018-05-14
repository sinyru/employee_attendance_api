class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.date :date_attended, null: false
      t.float :hours_worked, null: false
    end
  end
end
