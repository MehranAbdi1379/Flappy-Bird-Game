/// @description Insert description here
// You can write your code in this editor

if global.gameLevelSpeedCounter < 1000{
	global.gameLevelSpeedCounter++
}

if global.gameLevelSpeedCounter ==1000 {
	global.gameLevelSpeed += 0.5;
	for (var i = 0; i < instance_number(PipeO); ++i;)
{
    instance_find(PipeO,i).speed = global.gameLevelSpeed
}
	global.gameLevelSpeedCounter=0;
}

if global.pipeCreateCounter < 125 {
	global.pipeCreateCounter++;
}

if global.pipeCreateCounter ==125 {
	var rnd = random_range(100,400)
	instance_create_layer(1250 , rnd - 500 , "Instances" , PipeO)
	instance_create_layer(1250 , rnd + 300 , "Instances" , PipeO)
	instance_create_layer(1250 , rnd  , "Instances" , SpaceBetweenPipeO)
	global.pipeCreateCounter=0
}
