local Mode = {}
Mode.Name = "Super Blink"

function Mode:Init()
	print( "Blink:Init" )

	for _, p in pairs( PTB.Players ) do
		local hero = p.Entity:GetAssignedHero()

		if IsValidEntity( hero ) then
			hero:GetAbilityByName( "techies_blink" ):SetLevel( 2 )
		end
	end
end

function Mode:Cleanup()
	print( "Blink:Cleanup" )

	for _, p in pairs( PTB.Players ) do
		local hero = p.Entity:GetAssignedHero()

		if IsValidEntity( hero ) then
			hero:GetAbilityByName( "techies_blink" ):SetLevel( 1 )
		end
	end
end

return Mode