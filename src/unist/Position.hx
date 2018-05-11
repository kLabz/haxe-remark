package unist;

/**
	**Position** references a range consisting of two points in a [Unist
	file][file].  **Position** consists of a `start` and `end` point.
	And, if relevant, an `indent` property.

	When the value represented by a node is not present in the document
	corresponding to the syntax tree at the time of reading, it must not
	have positional information.  These nodes are said to be _generated_.
**/
typedef Position = {
	var start:Point;
	var end:Point;
	var indent:Null<Int>; // >= 1
}

