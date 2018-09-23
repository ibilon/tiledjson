package tests;

class Main
{
	public static function main ()
	{
		var allOk = true;
		var r = new utest.Runner();

		r.addCase(new ChunkTest());
		r.addCase(new EllipseTest());
		r.addCase(new MapTest());
		r.addCase(new ObjectLayerTest());
		r.addCase(new ObjectTest());
		r.addCase(new PointTest());
		r.addCase(new PolygonTest());
		r.addCase(new PolylineTest());
		r.addCase(new RectangleTest());
		r.addCase(new TerrainTest());
		r.addCase(new TextTest());
		r.addCase(new TileLayerTest());
		r.addCase(new TileSetTest());
		r.addCase(new WangColorTest());
		r.addCase(new WangTileTest());

		r.onProgress.add(function (result) {
				allOk = allOk && result.result.allOk();
		});

		utest.ui.Report.create(r, NeverShowSuccessResults, AlwaysShowHeader);
		r.run();

		#if sys
		Sys.exit(allOk ? 0 : 1);
		#end
	}
}
