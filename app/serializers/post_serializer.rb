class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :short_text, :test

  def short_text
    text[0..10]
  end

  def test
    {a: 1}.as_json[:a]
  end
end
