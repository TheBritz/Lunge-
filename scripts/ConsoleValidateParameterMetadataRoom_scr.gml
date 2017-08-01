///ConsoleValidateParameterMetadataRoom_scr(metadataMap)

var metadata = argument0;
metadata[? ConsoleParamType.Description] = "This parameter must be a valid room created in GameMaker. Call 'ShowRooms' to see a list of valid room names.";
metadata[? ConsoleParamType.DefaultSuggestionBuilder] = GetRooms_scr;
return metadata;
