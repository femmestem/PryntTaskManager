class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :description
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
