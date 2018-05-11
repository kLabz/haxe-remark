package mdast;

import unist.Node;

/**
	`Image` ([`Node`][node]) represents the figurative figure.
**/
class Image extends Node {
	public static inline var Type:String = "image";

	public var title:Null<String>;
	public var alt:Null<String>;
	public var url:String;
}

