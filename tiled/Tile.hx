package tiled;

/**
A tileset that associates information with each tile, like its image path or terrain type, may include a tiles array property. Each tile has an id property, which specifies the local ID within the tileset.

For the terrain information, each value is a length-4 array where each element is the index of a terrain on one corner of the tile. The order of indices is: top-left, top-right, bottom-left, bottom-right.
**/
class Tile
{
	/** **/
	public var animation : Array<Frame>;

	/** Local ID of the tile. **/
	public var id : Int;

	/** Image representing this tile. **/
	@:optional public var image : String;

	/** Height of the tile image in pixels. **/
	public var imageheight : Int;

	/** Width of the tile image in pixels. **/
	public var imagewidth : Int;

	/** Layer with type objectgroup. **/
	@:optional public var objectgroup : Layer;

	/** **/
	@:optional @:default([]) public var properties : Array<Property>;

	/** Index of terrain for each corner of tile. **/
	public var terrain : Array<Int>;

	/** The type of the tile. **/
	@:optional public var type : String;
}
