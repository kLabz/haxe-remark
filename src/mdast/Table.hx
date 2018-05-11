package mdast;

import unist.Parent;

/**
	`Table` ([`Parent`][parent]) represents tabular data, with alignment.
	Its children are [`TableRow`][tablerow]s, the first of which acts as
	a table header row.

	`table.align` represents the alignment of columns.
**/
class Table extends Parent {
	public static inline var Type:String = "table";

	public var align:Array<Null<AlignType>>;
}

@:enum abstract AlignType(String) from String to String {
	var Left = "left";
	var Right = "right";
	var Center = "center;
}

