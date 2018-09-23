package tiled;

@:enum abstract LayerCompression (String)
{
	var None = "none";
	var GZIP = "gzip";
	var ZLIB = "zlib";
}
