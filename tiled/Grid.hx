package tiled;

/**
This element is only used in case of isometric orientation, and determines how tile overlays for terrain and collision information are rendered.
**/
class Grid
{
	/** Orientation of the grid for the tiles in this tileset. **/
	public var orientation : GridOrientation;

	/** Width of a grid cell. **/
	public var width : Int;

	/** Height of a grid cell. **/
	public var height : Int;
}
