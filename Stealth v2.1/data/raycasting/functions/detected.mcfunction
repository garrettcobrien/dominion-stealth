tellraw @s ["",{"text":"You've been spotted!","bold":true,"color":"red"}]
scoreboard players set @s guardtime 0
scoreboard players set @s found 1



#In order to do something in game run an execute if entity scores={found=1}
