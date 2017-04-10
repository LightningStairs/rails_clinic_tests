require "rails_helper"

describe Clinic, type: :model do
  subject { create(:clinic) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:offered_at) }
end
