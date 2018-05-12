package vfile;

import haxe.extern.EitherType;
import js.Error;

import unist.Node;
import unist.Point;
import unist.Position;

@:jsRequire('vfile-message')
extern class VMessage extends Error {
	public var reason:String;
	public var fatal:Null<Bool>;
	public var line:Null<Int>;
	public var column:Null<Int>;
	public var location:Position;
	public var source:Null<String>;
	public var ruleId:Null<String>;

	/**
		Constructor of a message for `reason` at `position` from `origin`. When
		an error is passed in as `reason`, copies the stack.

		Parameters
		* `reason`: Reason for message. Uses the stack and message of the error
		  if given.

		* `position`: Place at which the message occurred in a file.

		* `origin`: Place in code the message originates from.
		  Can either be the `ruleId` (`'rule'`), or a string with both a
		  `source` and a `ruleId` delimited with a colon (`'source:rule'`).
	**/
	public function new(
		reason:EitherType<String, Error>,
		?position:EitherType<Node, EitherType<Position, Point>>,
		?origin:String
	);
}
