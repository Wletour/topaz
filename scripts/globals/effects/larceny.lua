-----------------------------------
--
--     tpz.effect.LARCENY
--
-----------------------------------

function onEffectGain(target, effect)
target:addMod(tpz.mod.AUGMENTS_AURA_STEAL, 100)
target:addMod(tpz.mod.STEAL, 100)
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
target:delMod(tpz.mod.AUGMENTS_AURA_STEAL, 100)
target:delMod(tpz.mod.STEAL, 100)
end