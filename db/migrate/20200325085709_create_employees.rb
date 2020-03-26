class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Gender
      t.date :HiredDate
      t.integer :Salary

      t.timestamps
    end
  end
end
