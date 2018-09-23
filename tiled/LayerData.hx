package tiled;

abstract LayerData (LayerDataContent) to LayerDataContent
{
	inline function new (t:LayerDataContent)
	{
		this = t;
	}

	@:from static inline function fromString (s:String)
	{
		return new LayerData(String(s));
	}

	@:from static inline function fromIntArray (a:Array<UInt>)
	{
		return new LayerData(UIntArray(a));
	}
}

enum LayerDataContent
{
	String (s:String);
	UIntArray (a:Array<UInt>);
}
