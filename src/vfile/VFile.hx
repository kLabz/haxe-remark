package vfile;

import haxe.extern.EitherType;
import js.Error;

import unist.Node;
import unist.Point;
import unist.Position;

#if js_kit
typedef VFileContent = EitherType<String, js.node.Buffer>;
#else
typedef VFileContent = String;
#end

typedef VFileData = EitherType<VFile, EitherType<VFileOptions, VFileContent>>;

typedef VFileOptions = {
	@:optional var contents:Null<VFileContent>;
	@:optional var cwd:String;
	@:optional var path:Null<String>;
	@:optional var basename:Null<String>;
	@:optional var stem:Null<String>;
	@:optional var extname:Null<String>;
	@:optional var dirname:Null<String>;
	@:optional var history:Array<String>;
	@:optional var messages:Array<VMessage>;
	@:optional var data:Dynamic;
}

@:jsRequire('vfile')
extern class VFile {
	public var contents:Null<VFileContent>;
	public var cwd:String;
	public var path:Null<String>;
	public var basename:Null<String>;
	public var stem:Null<String>;
	public var extname:Null<String>;
	public var dirname:Null<String>;
	public var history:Array<String>;
	public var messages:Array<VMessage>;
	public var data:Dynamic;

	public function new(?data:VFileData);

	/**
		Convert contents of `vfile` to string. If `contents` is a buffer,
		`encoding` is used to stringify buffers (default: `'utf8'`).
	**/
	public function toString(?encoding:String):String;

	/**
		Associates a message with the file, where `fatal` is set to `false`.
		Constructs a new `VMessage` and adds it to `vfile.messages`.
	**/
	public function message(
		reason:EitherType<String, Error>,
		?position:EitherType<Node, EitherType<Position, Point>>,
		?origin:String
	):VMessage;

	/**
		Associates an informational message with the file, where `fatal` is set
		to `null`. Calls `message()` internally.
	**/
	public function info(
		reason:EitherType<String, Error>,
		?position:EitherType<Node, EitherType<Position, Point>>,
		?origin:String
	):VMessage;

	/**
		Associates a fatal message with the file, then immediately throws it.
		Note: fatal errors mean a file is no longer processable. Calls
		`message()` internally.

		@throws VMessage
	**/
	public function fail(
		reason:EitherType<String, Error>,
		?position:EitherType<Node, EitherType<Position, Point>>,
		?origin:String
	):VMessage;
}
