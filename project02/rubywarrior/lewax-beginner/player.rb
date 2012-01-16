class Player
	def play_turn(warrior)
		@health = 20 if @health == nil
		
		if warrior.feel.enemy?
			warrior.attack!
		elsif warrior.feel.captive?
			warrior.rescue!
		elsif warrior.health < @health
			warrior.walk!(:forward)
		elsif warrior.health < 20
			warrior.rest!
		else
			warrior.walk!
		end
		
		@health = warrior.health
	end
end
