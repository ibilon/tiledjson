package tests;

import sys.io.File;
import json2object.JsonParser;
import utest.Assert;

class TileSetTest
{
	static final FILE = "tests/data/tileset.json";

	public function new () {}

	public function test ()
	{
		var parser = new JsonParser<tiled.TileSet>();
		var data = parser.fromJson(File.getContent(FILE), FILE);

		Assert.equals(0, parser.errors.length);
	}
}
