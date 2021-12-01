require 'rails_helper'
RSpec.describe 'Users', type: :request do
  describe 'GET #index' do
    before(:example) { get users_path }

    it 'Return positive response from server' do
      expect(response).to have_http_status(200)
    end

    it 'Renders index template' do
      expect(response).to render_template('index')
    end

    it 'Return text inside index' do
      expect(response.body).to include('This is the main section for the users')
    end
  end
end
