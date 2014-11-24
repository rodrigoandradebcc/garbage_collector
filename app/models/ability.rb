class Ability
  include CanCan::Ability

  def initialize(user)
	  user ||= User.new
	  if user.role? "Manager"
	  	can :manage, :all
	  end
	end    
end
