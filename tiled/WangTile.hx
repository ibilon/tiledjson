package tiled;

class WangTile
{
	/** Tile is flipped diagonally. **/
	public var dflip : Bool;

	/** Tile is flipped horizontally. **/
	public var hflip : Bool;

	/** Local ID of tile. **/
	public var tileid : Int;

	/** Tile is flipped vertically. **/
	public var vflip : Bool;

	/** Array of wang color indexes. **/
	public var wangid : Array<UInt>;
}
