package tiled;

/**
An object template is written to its own file and referenced by any instances of that template.
**/
class ObjectTemplate
{
	/** **/
	public var type : ObjectTemplateType;

	/** External tileset used by the template. **/
	@:optional public var tileset : TileSet;

	/** The object instantiated by this template. **/
	public var object : Object;
}
