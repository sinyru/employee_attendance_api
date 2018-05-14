class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :dob, null: false
      t.float :wage_per_hour, null: false

      t.timestamps
    end
  end
end
