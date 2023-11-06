// function u need to call
// creates the textbox
// what topic
function startDialogue(topic) {
	if (instance_exists(obj_textbox))
		return;
		
	var inst = instance_create_depth(x, y, -999, obj_textbox);
	inst.setTopic(topic);
}

function type(x, y, text, progress, width){
	var draw_x = 0;
	var draw_y = 0;
	
	for (var i = 1; i <= progress; i++) {
		var char = string_char_at(text, i);
		
		//normal line breaks
		if (char == "\n") {
			draw_x = 0;
			draw_y += string_height ("A");
		}
		// start new word, line break
		else if (char == " ") {
			draw_x += string_width(char);
			
			var word_width = 0;
			for ( var ii = i + 1; ii <= string_length(text); ii++) {
				var word_char = string_char_at(text, ii);
			
				//stop check at word end
				if (word_char == "\n" || word_char == " ")
					break;
					
				//if word extends boundary
				//new line
				word_width += string_width(word_char);
				if (draw_x + word_width > width) {
					draw_x = 0;
					draw_y += string_height ("A");
					break;
				}
			}
		}
		else {
		//draw letter
		draw_text(x + draw_x, y + draw_y, char);
		draw_x += string_width(char);
		}
	}
}