class FollowRequestPolicy < ApplicationPolicy
  attr_reader :user, :follow_request

  def initialize(user, follow_request)
    @user = user
    @follow_request = follow_request
  end

  def show?
    follow_request.recipient_id == current_user
  end

  def edit?
    follow_request.recipient_id == current_user
  end

  def update?
    follow_request.recipient_id == current_user
  end

  def destroy?
    follow_request.recipient_id == current_user
  end
end
