class BlogDecorator < Draper::Decorator
  delegate_all
  decorates_association :posts

  def url
    h.blog_url(source)
  end
end
