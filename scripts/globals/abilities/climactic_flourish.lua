-----------------------------------
-- Ability: Ternary Flourish
-- Description Allows you to deliver a threefold attack. Requires at least three finishing moves.
-- Obtained: DNC Level 93
-- Recast Time: 00:00:45 (Flourishes III)
-- Duration: 00:01:00
-- Cost: 3 Finishing Move charges
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------

function onAbilityCheck(player, target, ability)

    if (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_1)) then
        return 0, 0

    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_2)) then
        return 0, 0

    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_3)) then
        return 0, 0

    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_4)) then
        return 0, 0

    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_5)) then
        return 0, 0

    else
        return tpz.msg.basic.NO_FINISHINGMOVES, 0
    end
end

function onUseAbility(player, target, ability)

    if (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_1)) then
        player:delStatusEffect(tpz.effect.FINISHING_MOVE_1)
        player:addStatusEffect(tpz.effect.CLIMACTIC_FLOURISH, 1, 20, 60, 0, 0)
    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_2)) then
        player:delStatusEffect(tpz.effect.FINISHING_MOVE_2)
        player:addStatusEffect(tpz.effect.CLIMACTIC_FLOURISH, 2, 40, 60 0, 0)
    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_3)) then
        player:delStatusEffect(tpz.effect.FINISHING_MOVE_3)
        player:addStatusEffect(tpz.effect.CLIMACTIC_FLOURISH, 3, 60, 60 0, 0)
    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_4)) then
        player:delStatusEffect(tpz.effect.FINISHING_MOVE_4)
        player:addStatusEffect(tpz.effect.CLIMACTIC_FLOURISH, 4, 80, 60 0, 0)
    elseif (player:hasStatusEffect(tpz.effect.FINISHING_MOVE_5)) then
        player:delStatusEffect(tpz.effect.FINISHING_MOVE_5)
        player:addStatusEffect(tpz.effect.CLIMACTIC_FLOURISH, 5, 100, 60 0, 0)
    end

end