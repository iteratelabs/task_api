class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :points
      t.string :task_type
      t.string :status
      t.belongs_to :requester, foreign_key: { to_table: :users }, index: true
      t.belongs_to :owner, foreign_key: { to_table: :users }, index: true
      t.timestamps
    end
  end
end
