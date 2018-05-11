package unist;

/**
	A Node represents any unit in the Unist hierarchy.  It is an abstract
	interface.  Interfaces extending **Node** must have a `type` property,
	and may have `data` or `position` properties.  `type`s are defined by
	their namespace.

	Subsets of Unist are allowed to define properties on interfaces which
	extend Unist’s abstract interfaces.  For example, [mdast][] defines
	**Link** ([Parent][]) with a `url` property.
**/
class Node {
	public var type:String;
	public var data:Null<Data>;
	public var position:Null<Position>;
}

