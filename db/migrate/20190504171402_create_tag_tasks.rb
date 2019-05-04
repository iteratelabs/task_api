class CreateTagTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_tasks do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :task, index: true
    end
  end
end
