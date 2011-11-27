class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.super_admin?
      can :manage, :all
    elsif user.admin?
      can :create, Congress
      can :manage, Congress do |c|
          c.user == user
        end
      can :manage, Application do |a|
        a.congress.user == user || a.user == user
      end
    elsif user.student?
      can :create, Application
      can :create, Scholarship
    end
    can :read, :all
  end
end
