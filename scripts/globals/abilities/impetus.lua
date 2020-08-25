-----------------------------------
-- Ability: Impetus
-- Description	Enhances attack and critical hit rate with each successive melee attack you land.
-- Obtained: MNK Level 88
-- Recast Time: 00:05:00
-- Duration: 0:03:00
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------

function onAbilityCheck(player,target,ability)
    return 0,0
end

function onUseAbility(player,target,ability)
    player:addStatusEffect(tpz.effect.IMPETUS,2,0,180)
end