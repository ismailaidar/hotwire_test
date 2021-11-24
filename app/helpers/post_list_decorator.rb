class PostListDecorator < SimpleDelegator
  def body
    model.body.truncate(5)
  end

  def self.decorate(posts)
    posts.map { |post| new(post) }
  end

  private

  def model
    __getobj__
  end
end