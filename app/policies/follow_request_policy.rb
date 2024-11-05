class FollowRequestPolicy < ApplicationPolicy
  attr_reader :user, :follow_request

  def initialize(user, follow_request)
    @user = user
    @follow_request = follow_request
  end

  def update?
    follow_request.recipient_id == user.id
  end

  def destroy?
    follow_request.recipient_id == user.id || follow_request.sender_id == user.id 
  end

  def create? 
    true
  end
end
