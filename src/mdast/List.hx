package mdast;

import unist.Parent;

/**
	`List` ([`Parent`][parent]) contains [`ListItem`s][listitem].  No other nodes
	may occur in lists.

	The `start` property contains the starting number of the list when
	`ordered: true`; `null` otherwise.

	When all list items have `loose: false`, the list’s `loose` property is also
	`false`.  Otherwise, `loose: true`.
**/
class List extends Parent {
	public static inline var Type:String = "list";

	public var ordered:Bool;
	public var start:Null<Int>;
	public var loose:Bool;
}

