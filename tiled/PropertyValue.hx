package tiled;

abstract PropertyValue (String) from String
{
	function new (s:String)
	{
		this = s;
	}

	@:from static function fromFloat (f:Float)
	{
		return new PropertyValue(Std.string(f));
	}

	@:from static function fromBool (b:Bool)
	{
		return new PropertyValue(b ? "true" : "false");
	}
}
