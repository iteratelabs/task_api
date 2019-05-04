FactoryBot.define do
  factory :task do
    description { 'description' }
    points { 1 }
    task_type { 'feature' }
    status { 'unstarted' }
    tag_task
  end
end
