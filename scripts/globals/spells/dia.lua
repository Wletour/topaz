-----------------------------------------
-- Spell: Dia
-- Lowers an enemy's defense and gradually deals light elemental damage.
-----------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onSpellCast(caster,target,spell)
	
	--calculate raw damage
	basedmg = caster:getSkillLevel(ENFEEBLING_MAGIC_SKILL) / 4;
	dmg = calculateMagicDamage(basedmg,1,caster,spell,target,ENFEEBLING_MAGIC_SKILL,MOD_INT,false);
	if dmg > 2 then
		dmg = 2;
	end
	--get resist multiplier (1x if no resist)
	resist = applyResistance(caster,spell,target,caster:getMod(MOD_INT)-target:getMod(MOD_INT),ENFEEBLING_MAGIC_SKILL,1.0);
	--get the resisted damage
	dmg = dmg*resist;
	--add on bonuses (staff/day/weather/jas/mab/etc all go in this function)
	dmg = addBonuses(caster,spell,target,dmg);
	--add in target adjustment
	dmg = adjustForTarget(target,dmg);
	--add in final adjustments including the actual damage dealt
	final = finalMagicAdjustments(caster,target,spell,dmg);
	
	duration = 30;
	
	-- Check for Bio.
	bio = target:getStatusEffect(EFFECT_BIO);
	
	-- Do it!
	if(DIA_OVERWRITE == 0 or (DIA_OVERWRITE == 1 and bio == nil)) then
		target:delStatusEffect(EFFECT_DIA);
		target:addStatusEffect(EFFECT_DIA,1,3,duration);
		spell:setMsg(2);
	else
		spell:setMsg(75);
	end
	
	-- Try to kill same tier Bio
	if(BIO_OVERWRITE == 1 and bio ~= nil) then
		if(bio:getPower() == 1) then
			target:delStatusEffect(EFFECT_BIO);
		end
	end
	
	return final;
	
end;