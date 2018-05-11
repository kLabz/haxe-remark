package mdast;

import unist.Parent;

/**
	`Heading` ([`Parent`][parent]), just like with HTML, with a level greater
	than or equal to 1, lower than or equal to 6.
**/
class Heading extends Parent {
	public static inline var Type:String = "heading";

	public var depth:HeadingDepth;
}

@:enum abstract HeadingDepth(Int) from Int to Int {
	var H1 = 1;
	var H2 = 2;
	var H3 = 3;
	var H4 = 4;
	var H5 = 5;
	var H6 = 6;
}

