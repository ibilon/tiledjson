package tests;

import sys.io.File;
import json2object.JsonParser;
import utest.Assert;

class ChunkTest
{
	static final FILE = "tests/data/chunk.json";

	public function new () {}

	public function test ()
	{
		var parser = new JsonParser<tiled.Chunk>();
		var data = parser.fromJson(File.getContent(FILE), FILE);

		Assert.equals(0, parser.errors.length);
		Assert.equals(16, data.data.length);
		Assert.equals(16, data.height);
		Assert.equals(16, data.width);
		Assert.equals(0, data.x);
		Assert.equals(-16, data.y);

		var expected = [1, 2, 1, 2, 3, 1, 3, 1, 2, 2, 3, 3, 4, 4, 4, 1];
		for (i in 0...16)
		{
			Assert.equals(expected[i], data.data[i]);
		}
	}
}
