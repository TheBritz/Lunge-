#define ConsoleHideHitboxes_scr
global.ShowHitboxes = false;

#define ConsoleMetadataHideHitboxes_scr
var metadata = argument0;
metadata[? ConsoleMetadata.Description] = "Set hitboxes to be invisible.";
return metadata;