package mdast;

import unist.Parent;

/**
	`FootnoteDefinition` ([`Parent`][parent]) represents the definition
	(i.e., content) of a [`FootnoteReference`][footnotereference].
**/
class FootnoteDefinition extends Parent {
	public static inline var Type:String = "footnoteDefinition";

	public var identifier:String;
}

