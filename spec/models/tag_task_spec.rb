require 'rails_helper'

RSpec.describe TagTask do
  it { should belong_to :tag }
  it { should belong_to :task }
end
