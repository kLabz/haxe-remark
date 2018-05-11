package mdast;

import unist.Node;

/**
	`Definition` ([`Node`][node]) represents the definition (i.e., location
	and title) of a [`LinkReference`][linkreference] or an
	[`ImageReference`][imagereference].
**/
class Definition extends Node {
	public static inline var Type:String = "definition";

	public var identifier:String;
	public var title:Null<String>;
	public var url:String;
}

