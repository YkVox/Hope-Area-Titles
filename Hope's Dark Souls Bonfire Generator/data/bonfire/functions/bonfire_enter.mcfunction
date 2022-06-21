playsound minecraft:entity.blaze.shoot ambient @s ~ ~ ~ 5 0
playsound minecraft:entity.guardian.ambient ambient @s ~ ~ ~ 5 0.8
particle minecraft:dust 0.86 0.81 0.52 10 ~ ~ ~ 2 2 2 1 1000 normal

effect give @p[tag=!enter_bonfire] minecraft:slowness 9999 250 true
effect give @p[tag=!enter_bonfire] blindness 9999 0 true
effect give @p[tag=!enter_bonfire] minecraft:jump_boost 9999 250 true
effect give @p[tag=!enter_bonfire] minecraft:nausea 6 255 true
effect give @p[tag=!enter_bonfire] minecraft:regeneration 9999 3 true
effect give @p[tag=!enter_bonfire] minecraft:saturation 9999 3 true 

execute at @p[tag=!enter_bonfire] run tp @p ~ ~ ~ facing entity @e[tag=bonfire,sort=nearest,limit=1]
execute at @p[tag=!enter_bonfire] run tp @p ~ ~ ~ ~ ~40
spawnpoint @p[tag=!enter_bonfire] ~2 ~ ~ 90


attribute @p[tag=!enter_bonfire] minecraft:generic.knockback_resistance base set 1