class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :short_text, :test

  def test
    {a: 1}.as_json[:a]
  end
end
