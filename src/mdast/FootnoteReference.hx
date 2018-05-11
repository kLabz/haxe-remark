package mdast;

import unist.Node;

/**
	`FootnoteReference` ([`Node`][node]) is like [`Footnote`][footnote],
	but its content is already outside the documents flow: placed in a
	[`FootnoteDefinition`][footnotedefinition].
**/
class FootnoteReference extends Node {
	public static inline var Type:String = "footnoteReference";

	public var identifier:String;
}

