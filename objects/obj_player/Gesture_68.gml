var p;
p[0,0] = obj_player.x;
p[0,1] = obj_player.y;
ds_stack_push(obj_player.move,p);

obj_player.drag_offsetX = event_data[?"posX"]-obj_player.drag_start_x;
obj_player.drag_offsetY = event_data[?"posY"]-obj_player.drag_start_y;
if(abs(obj_player.drag_offsetX)>abs(obj_player.drag_offsetY)) {
	obj_player.drag_offsetX = obj_player.foot * sign(obj_player.drag_offsetX);
	obj_player.drag_offsetY = 0;
} else {
	obj_player.drag_offsetX = 0;
	obj_player.drag_offsetY = obj_player.foot * sign(obj_player.drag_offsetY);
}

obj_player.y += obj_player.drag_offsetY;
obj_player.x += obj_player.drag_offsetX;


