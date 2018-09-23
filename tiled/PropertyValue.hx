package tiled;

abstract PropertyValue (String)
{
	function new (s:String)
	{
		this = s;
	}

	@:from static function fromInt (f:Float)
	{
		return new PropertyValue(Std.string(f));
	}

	@:from static function fromBool (b:Bool)
	{
		return new PropertyValue(b ? "true" : "false");
	}
}
