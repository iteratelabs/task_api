require 'rails_helper'

RSpec.describe User do
  it { should validate_presence_of :name }

  it { should have_many :owned_tasks }
  it { should have_many :requested_tasks }
end
