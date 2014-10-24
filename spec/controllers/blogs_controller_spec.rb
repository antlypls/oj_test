require 'rails_helper'

RSpec.describe BlogsController do
  context 'JSON request' do
    describe 'GET index' do
      let(:post) { create(:post) }
      let!(:blog) { post.blog }

      subject { get :index, format: :json }

      it 'returns ok' do
        is_expected.to be_success
      end

      it 'returns valid JSON' do
        puts subject.body

        result = JSON.parse(subject.body)

        expect(result).to be_an(Array)
        expect(result.first['title']).to eq(blog.title)
        expect(result.first['posts']).not_to be_empty
      end
    end
  end
end
