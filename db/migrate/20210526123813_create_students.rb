class CreateStudents < ActiveRecord::Migration[6.1]
  def up
    create_table :students do |t|
      t.integer :user_id
      t.string :firstname
      t.string :lastname
      t.date :birthday
      t.integer :sex
      t.datetime :deleted_at
      t.timestamps
      t.index :user_id, unique: true
    end
  end
end
