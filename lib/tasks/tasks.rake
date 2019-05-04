namespace :tasks do
  task import: :environment do
    path = Rails.root.join('lib', 'assets', 'tasks.csv')
    TaskImport.new(path).perform
  end
end
