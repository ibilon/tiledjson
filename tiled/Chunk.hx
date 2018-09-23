package tiled;

/**
Chunks are used to store the tile layer data for infinite maps.
**/
class Chunk
{
	/** Array of UInt (GIDs) or base64-encoded data. **/
	public var data : Array<UInt>; //TODO or can be a string

	/** Height in tiles. **/
	public var height : Int;

	/** Width in tiles. **/
	public var width : Int;

	/** X coordinate in tiles. **/
	public var x : Int;

	/** Y coordinate in tiles. **/
	public var y : Int;
}
