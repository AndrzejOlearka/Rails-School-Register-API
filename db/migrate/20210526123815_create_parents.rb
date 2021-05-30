class CreateParents < ActiveRecord::Migration[6.1]
  def up
    create_table :parents do |t|
      t.integer :user_id
      t.string :firstname
      t.string :lastname
      t.integer :sex
      t.string :phone
      t.datetime :deleted_at
      t.timestamps
      t.index :user_id, unique: true
    end
  end
end
