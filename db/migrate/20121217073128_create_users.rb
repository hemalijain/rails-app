class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :rollno
      t.string :password
      t.string :confirmpassword
      t.date :dob
      t.string :gender
      t.text :address
      t.boolean :singing
      t.boolean :dancing
      t.boolean :reading

      t.timestamps
    end
  end
end
