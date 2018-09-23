package tiled;

class Terrain
{
	/** Name of terrain. **/
	@:optional @:default("") public var name : String;

	/** Local ID of tile representing terrain. **/
	public var tile : Int;
}
