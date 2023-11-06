function DialogueAction() constructor {
	act = function() { };
}

//define new text
function TextAction(_text) : DialogueAction() constructor {
	text = _text;
	
	act = function(textbox) {
		textbox.setText(text);
	}
}

function SpeakerAction(_sprite = undefined): DialogueAction() constructor {
	sprite = _sprite;
	
	act = function(textbox) {
		if (!is_undefined(sprite))
			textbox.portrait_sprite = sprite;
			
		textbox.next();
	}
}