class PostDecorator < Draper::Decorator
  delegate_all
  decorates_association :blog

  def short_text
    text[0..10]
  end
end
