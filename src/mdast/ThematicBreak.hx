package mdast;

import unist.Node;

/**
	A `ThematicBreak` ([`Node`][node]) represents a break in content,
	often shown as a horizontal rule, or by two HTML section elements.
**/
class ThematicBreak extends Node {
	public static inline var Type:String = "thematicBreak";
}

