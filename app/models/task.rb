class Task < ApplicationRecord
  validates :description, presence: true

  belongs_to :owner, class_name: 'User'
  belongs_to :requester, class_name: 'User'
  has_many :tag_tasks
  has_many :tags, through: :tag_tasks
end
