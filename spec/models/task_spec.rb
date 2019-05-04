require 'rails_helper'

RSpec.describe Task do
  it { should validate_presence_of :description }

  it { should belong_to :owner }
  it { should belong_to :requester }
  it { should have_many :tag_tasks }
  it { should have_many :tags }
end
