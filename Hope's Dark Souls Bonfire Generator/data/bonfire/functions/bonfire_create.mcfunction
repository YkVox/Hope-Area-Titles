setblock ~ ~ ~ minecraft:campfire
setblock ~ ~-2 ~ minecraft:coarse_dirt
setblock ~ ~-1 ~ minecraft:black_concrete_powder

execute align xyz run summon armor_stand ~0.5 ~0.3 ~0.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["bonfire"],Pose:{RightArm:[77f,92f,0f]},DisabledSlots:4144702,Rotation:[90F,0F],	HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Coiled Sword","color":"gold","bold":true}',Lore:['{"text":"This sword was never destined to slay.","color":"gray","italic":true}','{"text":"A bearer of the flame may thrust it into the ground, thus marking a safe and bright point in a dark world.","color":"gray","italic":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:4,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.2,Operation:0,UUID:[I;-859690465,1254245882,-1882780308,-2095408616]}]}},{}]		}

playsound minecraft:entity.player.breath voice @a[distance=..20] ~ ~ ~ 1 0
playsound minecraft:item.firecharge.use voice @a[distance=..20] ~ ~ ~ 1 0.6
execute at @e[tag=bonfire,sort=nearest,limit=1] run particle flame ~ ~0.4 ~ 0 0 0 0.2 100
execute at @e[tag=bonfire,sort=nearest,limit=1] run particle smoke ~ ~0.4 ~ 0 0 0 0.2 100
execute at @e[tag=bonfire,sort=nearest,limit=1] run particle minecraft:flash ~ ~0.4 ~ 0 0 0 1 1

#DEL COILED SWORD
kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:4}}}]