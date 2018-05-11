package mdast;

import unist.Parent;

/**
	`LinkReference` ([`Parent`][parent]) represents a humble hyperlink,
	its `url` and `title` defined somewhere else in the document by a
	[`Definition`][definition].

	`referenceType` is needed to detect if a reference was meant as a
	reference (`[foo][]`) or just unescaped brackets (`[foo]`).
**/
class LinkReference extends Parent {
	public static inline var Type:String = "linkReference";

	public var identifier:String;
	public var referenceType:ReferenceType;
}

@:enum abstract ReferenceType(String) from String to String {
	var Shortcut = "shortcut";
	var Collapsed = "collapsed";
	var Full = "full";
}

