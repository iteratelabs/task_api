require 'csv'

class TaskImport
  def initialize(path)
    @path = path
  end

  def perform
    CSV.foreach(@path, headers: true) do |row|
      process_row(row)
    end
  end

  private

  def process_row(row)
    Task.transaction do
      task = create_task!(row)
      create_tags!(task, row)
      task.save!
    end
  end

  def create_task!(row)
    task = Task.new(
      description: row['description'],
      points: row['points'],
      task_type: row['task_type'],
      status: row['status']
    )
    task.requester = User.find_or_create_by!(name: row['requester'])
    task.owner = User.find_or_create_by!(name: row['owner'])
    task
  end

  def create_tags!(task, row)
    tag = Tag.find_or_create_by!(description: row['tags'].to_s.strip)
    task.tags <<  tag
  end
end
