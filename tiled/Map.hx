package tiled;

import json2object.JsonParser;

class Map
{
	/** Hex-formatted color. (#RRGGBB or #AARRGGBB) **/
	@:optional public var backgroundcolor : Color;

	/** Number of tile rows. **/
	public var height : Int;

	/** Length of the side of a hex tile in pixels, hexagonal map only. **/
	@:optional public var hexsidelength : Int;

	/** Whether the map has infinite dimensions. **/
	public var infinite : Bool;

	/** **/
	public var layers : Array<Layer>;

	/** Stores the next available ID for new layers. This number is stored to prevent reuse of the same ID after layers have been removed. **/
	public var nextlayerid : Int;

	/** Stores the next available ID for new objects. This number is stored to prevent reuse of the same ID after objects have been removed. **/
	public var nextobjectid : Int;

	/** Map orientation. **/
	public var orientation : MapOrientation;

	/** **/
	@:optional public var properties : Array<Property>;

	/** The order in which tiles on tile layers are rendered, orthogonal maps only. In all cases, the map is drawn row-by-row. **/
	@:optional public var renderorder : MapRenderOrder;

	/** Staggered and hexagonal maps only. **/
	@:optional public var staggeraxis : MapStaggerAxis;

	/** Staggered and hexagonal maps only. **/
	@:optional public var staggerindex : MapStaggerIndex;

	/** The Tiled version used to save the file. May be a date in case of snapshot build. **/
	public var tiledversion : String;

	/** Map grid height. **/
	public var tileheight : Int;

	/** **/
	public var tilesets : Array<TileSet>;

	/** Map grid width. **/
	public var tilewidth : Int;

	/** **/
	public var type : MapType;

	/** The JSON format version. **/
	public var version : Float; //TODO warn if value is not known that parsing may not work

	/** Number of tile columns. **/
	public var width : Int;

	/**
	Load the Tiled object from the json `content`.
	Use `filename` in error messages if present.
	If `strictMode` is true (by default) then this will throw if the data is not valid.
	**/
	public static function load (content:String, filename:String="", strictMode:Bool=true) : Map
	{
		//TODO deal more with data
		var parser = new JsonParser<Map>();
		var data = parser.fromJson(content, filename);

		if (parser.errors.length > 0 && strictMode)
		{
			//throw parser.errors;
			trace(json2object.ErrorUtils.convertErrorArray(parser.errors));
		}

		return data;
	}
}
