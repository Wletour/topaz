-----------------------------------------
-- Spell: Threnody II - tpz.mod.FIRERES
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0
end

function onSpellCast(caster,target,spell)
    return handleThrenody(caster, target, spell, 160, 90, tpz.mod.FIRERES)
end
