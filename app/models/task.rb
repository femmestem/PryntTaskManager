class Task < ActiveRecord::Base
  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  has_many :task_assignments, dependent: :destroy
  has_many :assignees, through: :task_assignments

  def assigned_to?(user)
    self.assignees.include?(user)
  end

  def owned_by?(user)
    self.creator == user
  end
end
