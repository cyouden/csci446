authorization do
	role :admin do
		has_permission_on [:games, :roles, :users, :ratings], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
	end
	
	role :guest do
		has_permission_on :games, :to => [:index]
		has_permission_on :users, :sessions :to => [:new, :create]
	end
	
	role :member do
		includes :guest
		has_permission_on :games, :to => [:new, :create, :show]
		has_permission_on :games, :to => [:edit, :update] do
			if_attribute :user => is { user }
		end
		has_permission_on :users, :to => [:edit, :update] do
			if_attribute :user => is { user }
		end
	end
end