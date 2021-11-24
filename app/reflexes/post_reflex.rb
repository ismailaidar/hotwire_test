class PostReflex < ApplicationReflex
  delegate :current_user, to: :connection

  def create
    # byebug
    # grab some property value
    # element.dataset[:signed_id]
    @post = Post.new(post_params)
    @post.user = current_user
    @post.save
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end