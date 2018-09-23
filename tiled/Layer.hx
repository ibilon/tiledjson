package tiled;

//TODO deal with different type of layer, their optional/fixed values, maybe add subclass + asX() fn?
class Layer
{
	/** Tile layer with infinite map only. **/
	@:optional public var chunks : Array<Chunk>;

	/** Tile layer only. **/
	@:optional public var compression : LayerCompression;

	/** Array of UInt (GIDs) or base64-encoded data, tile layer only. **/
	@:optional public var data : LayerData;

	/** Object group only. **/
	@:optional public var draworder : LayerDrawOrder;

	/** When data is not UIntArray(a:Array<UInt>), tile layer only. **/
	@:optional public var encoding : LayerEncoding;

	/** Row count. Same as map height for fixed-size maps. **/
	public var height : Int;

	/** Incremental id - unique across all layers. **/
	public var id : Int;

	/** Image used by this layer, image layer only. **/
	@:optional public var image : String;

	/** Group only. **/
	@:optional public var layers : Array<Layer>;

	/** Name assigned to this layer. **/
	public var name : String;

	/** Object group only. **/
	@:optional public var objects : Array<Object>;

	/** Horizontal layer offset in pixels, default: 0. **/
	@:optional public var offsetx : Int;

	/** Vertical layer offset in pixels, default: 0. **/
	@:optional public var offsety : Int;

	/** Value between 0 and 1. **/
	public var opacity : Float;

	/** **/
	@:optional public var properties : Array<Property>;

	/** Hex-formatted color (#RRGGBB), image layer only. **/
	@:optional public var transparentcolor : Color;

	/** **/
	public var type : LayerType;

	/** Whether layer is shown or hidden in editor. **/
	public var visible : Bool;

	/** Column count. Same as map width for fixed-size maps. **/
	public var width : Int;

	/** Horizontal layer offset in tiles, always 0. **/
	public var x : Int;

	/** Vertical layer offset in tiles, always 0. **/
	public var y : Int;

	/**
	Return the layer data in Array<UInt> format, if necessary doing compression.
	**/
	public function getData () : Array<UInt> //TODO cache result
	{
		return switch ((data:LayerData.LayerDataContent))
		{
			case String(s):
				[]; //TODO handle decompression

			case UIntArray(a):
				a;
		}
	}
}
