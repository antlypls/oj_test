class BlogDecorator < Draper::Decorator
  delegate_all

  def url
    h.blog_url(source)
  end
end
