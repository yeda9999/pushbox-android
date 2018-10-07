var total_count = instance_number(obj_box);
var match_count = 0;
for(var i=0;i<total_count;i++) {
	var box_i = instance_find(obj_box,i);
	for(var j=0;j<total_count;j++) {
		var target_j = instance_find(obj_target,j);
		if(box_i.x == target_j.x && box_i.y == target_j.y) {
			match_count++;
		}
	}
}
draw_set_font(fnt_16);
draw_set_color(c_orange);
draw_text(x,50,"boxes : "+string(match_count)+"/"+string(total_count));
draw_text(x,100,"level : "+room_get_name(room));

if(match_count == total_count) {
	room_goto_next();
}