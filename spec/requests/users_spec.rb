require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:example) { get '/users' }

    it 'returns correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders correct template' do
      expect(response).to render_template(:index)
    end

    it 'returns correct response body' do
      expect(response.body).to include('All Users')
    end
  end

  describe 'GET /show' do
    before(:example) { get '/users/:id' }

    it 'returns correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders correct template' do
      expect(response).to render_template(:show)
    end

    it 'returns correct response body' do
      expect(response.body).to include('Show User')
    end
  end
end
