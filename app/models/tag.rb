class Tag < ApplicationRecord
  validates :description, presence: true

  has_many :tag_tasks
  has_many :tasks, through: :tag_tasks
end
