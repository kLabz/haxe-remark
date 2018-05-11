package unist;

/**
	**Point** references a point consisting of two indices in a
	[Unist file][file]: `line` and `column`, set to 1-based integers.  An
	`offset` (0-based) may be used.
**/
typedef Point = {
	var line:Int;
	var column:Int;
	var offset:Null<Int>;
}

