if !ds_stack_empty(obj_player.move) && return_count>0 {
	var lastmove = ds_stack_pop(obj_player.move);
	obj_player.x = lastmove[0,0];
	obj_player.y = lastmove[0,1];
	if(array_height_2d(lastmove)>1) {
		lastmove[1,2].x = lastmove[1,0];
		lastmove[1,2].y = lastmove[1,1];
	}
	return_count--;
}