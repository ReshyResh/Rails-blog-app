require 'rails_helper'
RSpec.describe 'Posts', type: :request do
  describe 'GET #index' do
    id = 5
    before(:example) { get user_posts_url(id) }

    it 'Return positive response from server' do
      expect(response).to have_http_status(200)
    end

    it 'Renders index template' do
      expect(response).to render_template('index')
    end

    it 'Return text inside index' do
      expect(response.body).to include("This is the list of posts for the user with id of #{id}")
    end
  end
end
