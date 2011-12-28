-----------------------------------------
--	
--	Spell: WaterSpirit
--	Summons WaterSpirit to fight by your side
-----------------------------------------

require("scripts/globals/pets");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onSpellCast(caster,target,spell)
	caster:spawnPet(PET_WATER_SPIRIT);
	return 0;
end;