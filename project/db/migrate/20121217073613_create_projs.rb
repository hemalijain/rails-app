class CreateProjs < ActiveRecord::Migration
  def change
    create_table :projs do |t|
      t.string :projectname
      t.string :status
      t.integer :user_id

      t.timestamps
    end
   end
  
end
