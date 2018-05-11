package unist;

/**
	Nodes containing other nodes (said to be **children**) extend the
	abstract interface **Parent** ([**Node**](#node)).
**/
class Parent extends Node {
	public var children:Array<Node>;
}

