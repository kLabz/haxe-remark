package mdast;

import unist.Parent;

/**
	`TableRow` ([`Parent`][parent]).  Its children are always
	[`TableCell`][tablecell].
**/
class TableRow extends Parent {
	public static inline var Type:String = "tableRow";
}

