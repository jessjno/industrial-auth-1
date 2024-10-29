class CommentPolicy
  attr_reader :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end

  def show?
    true
  end

  def edit?
    comment.author_id == user.id
  end

  def update?
    comment.author_id == user.id
  end

  def destroy?
    comment.author_id == user.id
  end
end
