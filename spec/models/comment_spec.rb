require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject { Comment.new(created_at: Time.now, updated_at: Time.now, user_id: 1, post_id: 1, text: 'Random comment') }

  before { subject.save }

  it 'Text should be present' do
    subject.text = nil
    expect(subject).to_not be_valid
  end

  it 'User ID should be a number' do
    subject.user_id = 'pizza'
    expect(subject).to_not be_valid
  end

  it 'Post ID should be a number' do
    subject.post_id = 'pasta'
    expect(subject).to_not be_valid
  end
end
