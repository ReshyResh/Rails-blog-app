require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(created_at: Time.now, updated_at: Time.now, name: 'User 1', photo: 'Random URL', bio: 'Random text',
             posts_counter: 0)
  end

  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Photo should be present' do
    subject.photo = nil
    expect(subject).to_not be_valid
  end

  it 'Bio should be present' do
    subject.bio = nil
    expect(subject).to_not be_valid
  end

  it 'Posts counter should start at 0' do
    subject.posts_counter = -5
    expect(subject).to_not be_valid
  end
end
