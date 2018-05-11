package mdast;

import unist.Parent;

/**
	`Link` ([`Parent`][parent]) represents the humble hyperlink.
**/
class Link extends Parent {
	public static inline var Type:String = "link";

	public var title:Null<String>;
	public var url:String;
}

