execute as @a at @e[tag=bonfire,sort=nearest,limit=1] run fill ~ ~2 ~ ~ ~-1 ~ air
execute as @a at @e[tag=bonfire,sort=nearest,limit=1] run clone ~1 ~-1 ~ ~1 ~ ~ ~ ~ ~
execute as @a at @e[tag=bonfire,sort=nearest,limit=1] run clone ~-1 ~-1 ~ ~-1 ~ ~ ~ ~ ~
execute as @a at @e[tag=bonfire,sort=nearest,limit=1] run clone ~ ~-1 ~1 ~ ~ ~1 ~ ~ ~
execute as @a at @e[tag=bonfire,sort=nearest,limit=1] run clone ~ ~-1 ~-1 ~ ~ ~-1 ~ ~ ~
execute as @a at @e[tag=bonfire,sort=nearest,limit=1] run clone ~1 ~-1 ~ ~1 ~ ~ ~ ~-1 ~
execute as @a at @e[tag=bonfire,sort=nearest,limit=1] run clone ~-1 ~-1 ~ ~-1 ~ ~ ~ ~-1 ~
execute as @a at @e[tag=bonfire,sort=nearest,limit=1] run clone ~ ~-1 ~1 ~ ~ ~1 ~ ~-1 ~
execute as @a at @e[tag=bonfire,sort=nearest,limit=1] run clone ~ ~-1 ~-1 ~ ~ ~-1 ~ ~-1 ~

execute at @e[tag=bonfire,sort=nearest,limit=1] run particle minecraft:large_smoke ~ ~0.4 ~ 0 0 0 0.2 100
execute at @e[tag=bonfire,sort=nearest,limit=1] run kill @e[tag=bonfire,distance=..1,sort=nearest,limit=10]

playsound minecraft:item.shield.break voice @a[distance=..20] ~ ~ ~ 1 0

#AU CAS OU PLAYER DANS BONFIRE QUAND REMOVE
function bonfire:bonfire_leave