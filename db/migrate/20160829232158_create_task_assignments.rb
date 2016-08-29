class CreateTaskAssignments < ActiveRecord::Migration
  def change
    create_table :task_assignments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :task, index: true
      t.timestamps null: false
    end
  end
end
