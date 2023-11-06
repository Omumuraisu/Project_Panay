/// CUSTOMIZABLE

//input
confirm_key = vk_space;

//pos
margin = 108;
padding = 54;
width = (display_get_gui_width() - margin) / 2;
height = sprite_height;

x = 108;
y = 704;

//text
text_font = fnt_text;
text_color = c_white;
text_speed = 0.6;
text_x = 400;
text_y = padding;
text_width = 1200;

// portrait
portrait_x = 168;
portrait_y = 746;

//PRIVATE PROPS
//do not edit
actions = [];
current_action = -1;

text = "";
text_progress = 0;
text_length = 0;

portrait_sprite = -1;

///METHODS
//dun call manually

//start convo
setTopic = function(topic) {
	actions = global.topics[$ topic];
	current_action = -1;
	
	next();
}

// move to next action
next = function() {
	current_action++;
	if (current_action >= array_length(actions)){
		Obj_Junjun.State = playerstate.Move;
		Obj_Junjun.inDialogue = false;
		instance_destroy();
	}
	else {
		actions[current_action].act(id);
	}
}

//set text to be typed
setText = function(newText) {
	text = newText;
	text_length = string_length(newText);
	text_progress = 0;
}


