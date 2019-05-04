require 'rails_helper'

RSpec.describe Tag do
  it { should validate_presence_of :description }

  it { should have_many :tag_tasks }
  it { should have_many :tasks}
end
