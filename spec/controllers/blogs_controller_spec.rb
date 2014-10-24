require 'rails_helper'

RSpec.describe BlogsController do
  context 'JSON request' do
    describe 'GET index' do
      let!(:blog) { create(:blog) }
      subject { get :index, format: :json }

      it 'returns ok' do
        is_expected.to be_success
      end

      it 'returns valid JSON' do
        puts subject.body

        result = JSON.parse(subject.body)

        expect(result).to be_an(Array)
        expect(result.first['title']).to eq(blog.title)
      end
    end
  end
end
