require 'rails_helper'

RSpec.describe TaskImport do
  describe '#perform' do
    it "imports the correct number of heroes" do
      import = build_import

      expect { import.perform }.to change(Task, :count).by(4)
    end

    it "assigns attributes to tasks correctly" do
      import = build_import

      import.perform

      task = Task.first
      expect(task).to have_attributes(
        description: 'Implement checkout',
        points: 4,
        task_type: 'feature',
        status: 'unstarted'
      )
    end

    it "assigns tags to tasks correctly" do
      import = build_import

      import.perform

      task = Task.first
      expect(task.tags.pluck(:description)).to contain_exactly(
        'checkout', 'money', 'ecommerce'
      )
    end
  end

  def build_import
    path = Rails.root.join('spec', 'fixtures', 'task_import', 'sample.csv')
    described_class.new(path)
  end
end
