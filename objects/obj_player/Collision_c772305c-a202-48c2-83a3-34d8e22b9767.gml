with(other) {
	if(keyboard_check_released(vk_up)) {
		if(place_meeting(x,y,other)) {
			other.y += other.foot;
		}
	} else
	if(keyboard_check_released(vk_down)) {
		if(place_meeting(x,y,other)) {
			other.y -= other.foot;
		}
	} else
	if(keyboard_check_released(vk_left)) {
		if(place_meeting(x,y,other)) {
			other.x += other.foot;
		}
	} else
	if(keyboard_check_released(vk_right)) {
		if(place_meeting(x,y,other)) {
			other.x -= other.foot;
		}
	} else
	if(place_meeting(x,y,other)) {
		other.y -= other.drag_offsetY;
		other.x -= other.drag_offsetX;
	}
}