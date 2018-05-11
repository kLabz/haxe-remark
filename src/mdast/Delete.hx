package mdast;

import unist.Parent;

/**
	`Delete` ([`Parent`][parent]) represents text ready for removal.
**/
class Delete extends Parent {
	public static inline var Type:String = "delete";
}

