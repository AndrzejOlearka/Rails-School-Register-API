class CreateJoinTableStudentsParents < ActiveRecord::Migration[6.1]
    def up
      create_join_table :students, :parents do |t|
       t.index :student_id
       t.index :parent_id
      end
    end
  end
  