package mdast;

import unist.Parent;

/**
	`ListItem` ([`Parent`][parent]) is a child of a [`List`][list].

	Loose `ListItem`s often contain more than one block-level elements.

	A checked property exists on `ListItem`s, set to `true` (when checked),
	`false` (when unchecked), or `null` (when not containing a checkbox).
	See [Task Lists on GitHub][task-list] for information.
**/
class ListItem extends Parent {
	public static inline var Type:String = "listItem";

	public var loose:Bool;
	public var checked:Null<Bool>;
}

