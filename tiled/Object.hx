package tiled;

class Object
{
	/** Used to mark an object as an ellipse. **/
	@:optional public var ellipse : Bool;

	/** GID, only if object comes from a tile map. **/
	@:optional public var gid : Int;

	/** Height in pixels. Ignored if using a GID. **/
	public var height : Int;

	/** Incremental id - unique across all objects. **/
	public var id : Int;

	/** Name field in editor. **/
	public var name : String;

	/** Used to mark an object as a point. **/
	@:optional public var point : Bool;

	/** A list of coordinates in pixels. **/
	@:optional public var polygon : Array<Point>;

	/** A list of coordinates in pixels. **/
	@:optional public var polyline : Array<Point>;

	/** **/
	@:optional public var properties : Array<Property>;

	/** Angle in degrees clockwise. **/
	public var rotation : Float;

	/** Reference to a template file, in case object is a template instance. **/
	@:optional public var template : String;

	/** **/
	@:optional public var text : ObjectText;

	/** Type field in editor. **/
	public var type : String;

	/** Whether object is shown in editor. **/
	public var visible : Bool;

	/** Width in pixels. Ignored if using a GID. **/
	public var width : Int;

	/** X coordinate in pixels. **/
	public var x : Int;

	/** Y coordinate in pixels. **/
	public var y : Int;
}
