-----------------------------------------
-- ID: 5144
-- Item: serving_of_crimson_jelly
-- Food Effect: 180Min, All Races
-----------------------------------------
-- Magic % 12
-- Magic Cap 85
-- Intelligence 6
-- Magic Regen While Healing 1
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if target:hasStatusEffect(tpz.effect.FOOD) or target:hasStatusEffect(tpz.effect.FIELD_SUPPORT_FOOD) then
        result = tpz.msg.basic.IS_FULL
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(tpz.effect.FOOD, 0, 0, 10800, 5144)
end

function onEffectGain(target, effect)
    target:addMod(tpz.mod.FOOD_MPP, 12)
    target:addMod(tpz.mod.FOOD_MP_CAP, 85)
    target:addMod(tpz.mod.INT, 6)
    target:addMod(tpz.mod.MPHEAL, 1)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.FOOD_MPP, 12)
    target:delMod(tpz.mod.FOOD_MP_CAP, 85)
    target:delMod(tpz.mod.INT, 6)
    target:delMod(tpz.mod.MPHEAL, 1)
end
