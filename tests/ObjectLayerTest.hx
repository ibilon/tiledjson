package tests;

import sys.io.File;
import json2object.JsonParser;
import utest.Assert;

class ObjectLayerTest
{
	static final FILE = "tests/data/objectlayer.json";

	public function new () {}

	public function test ()
	{
		var parser = new JsonParser<tiled.Layer>();
		var data = parser.fromJson(File.getContent(FILE), FILE);

		Assert.equals(0, parser.errors.length);
	}
}
