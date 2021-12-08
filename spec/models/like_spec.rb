require 'rails_helper'

RSpec.describe Like, type: :model do
  subject { Like.new(created_at: Time.now, updated_at: Time.now, user_id: 1, post_id: 1) }
  before { subject.save }

  it 'User ID should be a number' do
    subject.user_id = 'pizza'
    expect(subject).to_not be_valid
  end

  it 'Post ID should be a number' do
    subject.post_id = 'pasta'
    expect(subject).to_not be_valid
  end
end
