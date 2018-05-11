package mdast;

import unist.Node;

/**
	`ImageReference` ([`Node`][node]) represents a figurative figure,
	its `url` and `title` defined somewhere else in the document by a
	[`Definition`][definition].

	`referenceType` is needed to detect if a reference was meant as a
	reference (`![foo][]`) or just unescaped brackets (`![foo]`).
**/
class ImageReference extends Node {
	public static inline var Type:String = "imageReference";

	public var identifier:String;
	public var referenceType:ReferenceType;
	public var alt:Null<String>;
}

