class ArticlePolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    author? || admin?
  end

  def destroy?
    author? || admin?
  end

  private

  def author?
    user_logged_in? && record.author_id == user.id
  end
end