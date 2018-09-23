package tests;

import sys.io.File;
import json2object.JsonParser;
import utest.Assert;

class PolylineTest
{
	static final FILE = "tests/data/polyline.json";

	public function new () {}

	public function test ()
	{
		var parser = new JsonParser<tiled.Object>();
		var data = parser.fromJson(File.getContent(FILE), FILE);

		Assert.equals(0, parser.errors.length);
	}
}
