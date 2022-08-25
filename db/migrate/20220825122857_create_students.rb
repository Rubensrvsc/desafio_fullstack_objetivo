class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :student_name
      t.date :birth
      t.string :cpf
      t.string :email
      t.integer :serie
      t.string :shift
      t.string :city
      t.string :state
      t.string :responsible_name
      t.string :responsible_email
      t.string :responsible_phone
      t.boolean :status

      t.timestamps
    end
  end
end
