execute as @a at @s run tellraw @s[gamemode=creative] ["",{"text":" \u0020 Hope's ","italic":true,"underlined":true},{"text":"Dark Souls Bonfires","bold":true,"italic":true,"underlined":true},{"text":" sucessfully activated \u0020 ","italic":false,"underlined":true}]

scoreboard objectives add bonfire_sneak minecraft.custom:minecraft.sneak_time
scoreboard players set @a bonfire_sneak 0

scoreboard objectives add timer dummy
scoreboard players set @a timer 0