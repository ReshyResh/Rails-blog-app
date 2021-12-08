require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { Post.new(created_at: Time.now, updated_at: Time.now, user_id: 1,title: 'Random title',text: 'Random text',comments_counter: 0, likes_counter: 0) }

  before {subject.save}

  it 'Title should be present' do
      subject.title=nil
      expect(subject).to_not be_valid
  end

  it 'Text should be present' do
    subject.title=nil
    expect(subject).to_not be_valid
end

  it 'User ID should be a number' do
      subject.user_id='pizza'
      expect(subject).to_not be_valid
  end

  it 'Comments counter should start at 0' do
      subject.comments_counter= 5
      expect(subject).to_not be_valid
  end

  it 'Likes counter should start at 0' do
    subject.likes_counter= 5
    expect(subject).to_not be_valid
  end
end