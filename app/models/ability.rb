class Ability
  include CanCan::Ability

  def initialize(user)
    # if user.present?
    #   can :create, Congress
    #   can :manage, Congress do |c|
    #       c.try(:user) == user
    #     end
    #   can :manage, Application
    # else
    #   can :read, :all
    # end
  end
end
