package tiled;

class TileSet
{
	/** The number of tile columns in the tileset. **/
	public var columns : Int;

	/** GID corresponding to the first tile in the set. **/
	public var firstgid : Int;

	/** **/
	@:optional public var grid : Grid;

	/** Image used for tiles in this set. **/
	public var image : String;

	/** Width of source image in pixels. **/
	public var imagewidth : Int;

	/** Height of source image in pixels. **/
	public var imageheight : Int;

	/** Buffer between image edge and first tile in pixels. **/
	public var margin : Int;

	/** Name given to this tileset. **/
	public var name : String;

	/** **/
	@:optional @:default([]) public var properties : Array<Property>;

	/** Spacing between adjacent tiles in image in pixels. **/
	public var spacing : Int;

	/** **/
	@:optional @:default([]) public var terrains : Array<Terrain>;

	/** The number of tiles in this tileset. **/
	public var tilecount : Int;

	/** Maximum height of tiles in this set. **/
	public var tileheight : Int;

	/** **/
	@:optional @:default(new tiled.Point()) public var tileoffset : Point;

	/** **/
	@:optional @:default([]) public var tiles : Array<Tile>;

	/** Maximum width of tiles in this set. **/
	public var tilewidth : Int;

	/** Hex-formatted color (#RRGGBB). **/
	@:optional public var transparentcolor : Color;

	/** For tileset files. **/
	@:optional public var type : TileSetType;

	/** **/
	@:optional public var wangsets : Array<WangSet>;
}
