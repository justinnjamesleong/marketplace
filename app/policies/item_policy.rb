class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
     def resolve
       scope.all
     end

    def index?
      true
    end

    def update?
      record.user == user
    end

    def create?
      true
    end
  end
end
