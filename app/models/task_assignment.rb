class TaskAssignment < ActiveRecord::Base
  belongs_to :assignee, class_name: "User", foreign_key: "user_id"
  belongs_to :assignment, class_name: "Task", foreign_key: "task_id"
end
