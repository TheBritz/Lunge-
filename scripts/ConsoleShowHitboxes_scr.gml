#define ConsoleShowHitboxes_scr
global.ShowHitboxes = true;

#define ConsoleMetadataShowHitboxes_scr
var metadata = argument0;
metadata[? ConsoleMetadata.Description] = "Set hitboxes to be visible.";
return metadata;