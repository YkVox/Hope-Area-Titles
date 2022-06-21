#TIMERS
#min 1 sec avant de pouvoir quitter bonfire
scoreboard players add @a[tag=enter_bonfire] timer 1

#VISUALS
execute as @a at @e[tag=bonfire,sort=nearest,limit=10] run particle flame ~ ~ ~ 0 0.5 0 0.05 1

#NEAR BONFIRE MESSAGE
execute as @a at @s if entity @e[tag=bonfire,distance=..2,sort=nearest,limit=1] run title @s actionbar ["",{"text":"Rest at bonfire "},{"text":"[","color":"dark_gray"},{"text":"SNEAK","color":"gold"},{"text":"]","color":"dark_gray"}]

#ENTER BONFIRE PINGU
execute as @a at @s[scores={bonfire_sneak=1..},tag=!enter_bonfire] run execute at @e[tag=bonfire,distance=..2,sort=nearest,limit=1] run function bonfire:bonfire_enter 

#LEAVE BONFIRE (if tag=enter_bonfire >>dans bonfire)
execute as @a at @s[scores={bonfire_sneak=1..,timer=20..},tag=enter_bonfire,tag=leave_bonfire] run execute at @e[tag=bonfire,distance=..3,sort=nearest,limit=1] run function bonfire:bonfire_leave

#	RESET PINGU enter
execute as @a at @s[scores={bonfire_sneak=1..},tag=!enter_bonfire] if entity @e[tag=bonfire,distance=..2,sort=nearest,limit=1] run tag @s add enter_bonfire

#	RESET PINGU leave
execute as @a at @s[scores={bonfire_sneak=1..},tag=enter_bonfire,tag=!leave_bonfire] if entity @e[tag=bonfire,distance=..2,sort=nearest,limit=1] run tag @s add leave_bonfire

#reset SNEAK
execute as @a at @s[scores={bonfire_sneak=1..}] run scoreboard players set @s bonfire_sneak 0

#reset ENTER
execute as @a at @s[scores={bonfire_sneak=0},tag=enter_bonfire] unless entity @e[tag=bonfire,distance=..3,sort=nearest,limit=1] run tag @s remove enter_bonfire

#reset LEAVE
execute as @a at @s[scores={bonfire_sneak=0},tag=leave_bonfire] unless entity @e[tag=bonfire,distance=..3,sort=nearest,limit=1] run tag @s remove leave_bonfire

#reset TIMER
execute as @a at @s[scores={timer=20..},tag=!enter_bonfire,tag=!leave_bonfire] run scoreboard players set @s timer 0


#CREATE BONFIRE
execute as @a at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:4}}}] unless block ~ ~-1 ~ air run function bonfire:bonfire_create


#DEL BONFIRE PINGU
execute as @a at @s[tag=!no_maiden] unless data entity @e[tag=bonfire,distance=..10,sort=nearest,limit=1] HandItems[{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:4,Damage:0}}] run function bonfire:bonfire_remove

execute as @a at @s[tag=!no_maiden] unless data entity @e[tag=bonfire,distance=..10,sort=nearest,limit=1] HandItems[{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:4,Damage:0}}] run tag @s add no_maiden

execute as @a at @s[tag=no_maiden] if data entity @e[tag=bonfire,distance=..10,sort=nearest,limit=1] HandItems[{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:4,Damage:0}}] run tag @s remove no_maiden