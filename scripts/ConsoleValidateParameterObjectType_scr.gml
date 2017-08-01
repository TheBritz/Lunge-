///ConsoleValidateParameterObjectType_scr(value)

var value = argument0
var assetType = asset_get_type(value)
if(assetType == asset_object)
{
  return asset_get_index(value);
}

return undefined;

