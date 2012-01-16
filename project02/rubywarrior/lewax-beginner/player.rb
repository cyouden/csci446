class Player
	def play_turn(warrior)
		@health = 20 if @health == nil
		@direction = :forward if @direction == nil
		
		felt = warrior.feel(@direction)
		
		if warrior.health < 10 && felt.enemy?
			@direction = opposite_direction(@direction)
			warrior.walk!(@direction)
		elsif felt.enemy?
			warrior.attack!(@direction)
		elsif felt.captive?
			warrior.rescue!(@direction)
		elsif felt.wall?
			warrior.pivot!
		elsif warrior.health < @health
			warrior.walk!(@direction)
		elsif warrior.health < 20
			warrior.rest!
		else
			warrior.walk!(@direction)
		end
		
		@health = warrior.health
	end
	
	def opposite_direction(direction)
		if direction == :forward
			return :backward
		elsif direction == :backward
			return :forward
		else
			return :forward
		end
	end
end
