/// @function                 newNotification(name);
/// @param {string}  name     sprite's name without spr_ (default: "")
/// @param {Real}  yOffset     which height it will spawn (default: -10)
/// @description              Create a notification above the caller.
function newNotification(name = "", xOffset = 0, yOffset = -32){
	var note = instance_create_layer(x + xOffset, y + yOffset, "Instances", obj_notification);
	note.setSprite(name); // ou "change", "handDice", etc.
}