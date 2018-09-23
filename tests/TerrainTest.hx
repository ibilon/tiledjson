package tests;

import sys.io.File;
import json2object.JsonParser;
import utest.Assert;

class TerrainTest
{
	static final FILE = "tests/data/terrain.json";

	public function new () {}

	public function test ()
	{
		var parser = new JsonParser<Array<tiled.Terrain>>();
		var data = parser.fromJson(File.getContent(FILE), FILE);

		Assert.equals(0, parser.errors.length);
	}
}
