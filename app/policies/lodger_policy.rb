class LodgerPolicy < ApplicationPolicy
  def new?
		users.admin?
	end
	def update?
		users.admin?
	end
	def create?
		users.admin?
	end
	def destroy?
		users.admin?
	end
	def edit?
		users.admin?
	end
  class Scope < Scope
    def resolve
      scope
    end
  end
end
