class User < ApplicationRecord
  validates :name, presence: true

  has_many :owned_tasks, class_name: 'Task', foreign_key: :owner_id
  has_many :requested_tasks, class_name: 'Task', foreign_key: :requester_id
end
