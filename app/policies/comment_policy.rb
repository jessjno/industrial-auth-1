class CommentPolicy < ApplicationPolicy
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
    user == comment.author
  end
end
