class Player
  def play_turn(warrior)
    if warrior.feel(:forward).enemy?
		warrior.attack!
	elsif warrior.health < 20
		warrior.rest!
	else
		warrior.walk!
	end
  end
end
