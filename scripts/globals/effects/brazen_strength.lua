-----------------------------------
--
--     tpz.effect.BRAZEN_STRENGTH
--
-----------------------------------

function onEffectGain(target, effect)
target:addMod(tpz.mod.DOUBLE_ATTACK, 100)
end

function onEffectTick(target, effect)
target:addMod(tpz.mod.DOUBLE_ATTACK, -25)
end

function onEffectLose(target, effect)
target:addMod(tpz.mod.DOUBLE_ATTACK-50)
end