class Task < ActiveRecord::Base
  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  has_many :task_assignments, dependent: :destroy
  has_many :assignees, through: :task_assignments
end
