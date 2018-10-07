with(other) {
	if(keyboard_check_released(vk_up) || other.drag_offsetY < 0) {
		if(!place_meeting(x,y-other.foot,obj_wall) && !place_meeting(x,y-other.foot,obj_box)) {
			var player = ds_stack_pop(other.move);
			var p;
			p[0,0] = player[0,0];
			p[0,1] = player[0,1];
			p[1,0] = x;
			p[1,1] = y;
			p[1,2] = instance_nearest(x, y, obj_box).id;
			ds_stack_push(other.move,p);
			y -= other.foot;
		} else {
			other.y += other.foot;
			ds_stack_pop(other.move);
		}
	}
	if(keyboard_check_released(vk_down) || other.drag_offsetY > 0) {
		if(!place_meeting(x,y+other.foot,obj_wall) && !place_meeting(x,y+other.foot,obj_box)) {
			var player = ds_stack_pop(other.move);
			var p;
			p[0,0] = player[0,0];
			p[0,1] = player[0,1];
			p[1,0] = x;
			p[1,1] = y;
			p[1,2] = instance_nearest(x, y, obj_box).id;
			ds_stack_push(other.move,p);
			y += other.foot;
		} else {
			other.y -= other.foot;
			ds_stack_pop(other.move);
		}
	}
	if(keyboard_check_released(vk_left) || other.drag_offsetX < 0) {
		if(!place_meeting(x-other.foot,y,obj_wall) && !place_meeting(x-other.foot,y,obj_box)) {
			var player = ds_stack_pop(other.move);
			var p;
			p[0,0] = player[0,0];
			p[0,1] = player[0,1];
			p[1,0] = x;
			p[1,1] = y;
			p[1,2] = instance_nearest(x, y, obj_box).id;
			ds_stack_push(other.move,p);
			x -= other.foot;
		} else {
			other.x += other.foot;
			ds_stack_pop(other.move);
		}
	}
	if(keyboard_check_released(vk_right) || other.drag_offsetX > 0) {
		if(!place_meeting(x+other.foot,y,obj_wall) && !place_meeting(x+other.foot,y,obj_box)) {
			var player = ds_stack_pop(other.move);
			var p;
			p[0,0] = player[0,0];
			p[0,1] = player[0,1];
			p[1,0] = x;
			p[1,1] = y;
			p[1,2] = instance_nearest(x, y, obj_box).id;
			ds_stack_push(other.move,p);
			x += other.foot;
		} else {
			other.x -= other.foot;
			ds_stack_pop(other.move);
		}
	}
}