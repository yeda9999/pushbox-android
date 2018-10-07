with(other) {
	if(keyboard_check_released(vk_up) || other.drag_offsetY < 0) {
		if(!place_meeting(x,y-other.foot,obj_wall) && !place_meeting(x,y-other.foot,obj_box)) {
			y -= other.foot;
		} else {
			other.y += other.foot;
		}
	}
	if(keyboard_check_released(vk_down) || other.drag_offsetY > 0) {
		if(!place_meeting(x,y+other.foot,obj_wall) && !place_meeting(x,y+other.foot,obj_box)) {
			y += other.foot;
		} else {
			other.y -= other.foot;
		}
	}
	if(keyboard_check_released(vk_left) || other.drag_offsetX < 0) {
		if(!place_meeting(x-other.foot,y,obj_wall) && !place_meeting(x-other.foot,y,obj_box)) {
			x -= other.foot;
		} else {
			other.x += other.foot;
		}
	}
	if(keyboard_check_released(vk_right) || other.drag_offsetX > 0) {
		if(!place_meeting(x+other.foot,y,obj_wall) && !place_meeting(x+other.foot,y,obj_box)) {
			x += other.foot;
		} else {
			other.x -= other.foot;
		}
	}
}