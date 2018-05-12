package unified;

import haxe.Constraints.Function;
import haxe.extern.EitherType;
import js.Error;
import js.Promise;

import unified.Plugin;
import unist.Node;
import vfile.VFile;

interface Processor {
	/**
		Function handling the parsing of text to a syntax tree. Used in the
		`parse` phase in the process and invoked with a `string` and `VFile`
		representation of the document to parse.

		`Parser` can be a normal function in which case it must return a
		`Node`: the syntax tree representation of the given file.

		`Parser` can also be a constructor function (a function with keys in
		its `prototype`) in which case it’s invoked with `new`. Instances must
		have a `parse` method which is invoked without arguments and must
		return a `Node`.
	**/
	public var Parser:Function;

	/**
		Function handling the compilation of syntax tree to a text. Used in the
		`stringify` phase in the process and invoked with a `Node` and `VFile`
		representation of the document to stringify.

		`Compiler` can be a normal function in which case it must return a
		`string`: the text representation of the given syntax tree.

		`Compiler` can also be a constructor function (a function with keys in
		its `prototype`) in which case it’s invoked with `new`. Instances must
		have a `compile` method which is invoked without arguments and must
		return a `string`.
	**/
	public var Compiler:Function;

	/**
		Configure the processor to use a plugin and optionally configure that
		plugin with options.

		Note: `use` cannot be called on frozen processors. Invoke the processor
		first to create a new unfrozen processor.
	**/
	@:overload(function(preset:Preset):Processor {})
	@:overload(function(list:PluginList):Processor {})
	public function use<T:{}>(plugin:Plugin<T>, ?options:T):Processor;

	/**
		Parse text to a syntax tree.

		Note: `parse` freezes the processor if not already frozen, and does not
		apply transformers from the run phase to the syntax tree.
	**/
	public function parse(f:VFileData):Node;

	/**
		Compile a syntax tree to text.

		Note: `stringify` freezes the processor if not already frozen, and does
		not apply transformers from the run phase to the syntax tree.
	**/
	public function stringify(node:Node, ?file:VFileData):String;

	/**
		Transform a syntax tree by applying plugins to it.

		Note: `run` freezes the processor if not already frozen.
	**/
	public function run(node:Node, ?file:VFileData, ?done:Error->?Node->?VFile->Void):Promise<Node>;

	/**
		Transform a syntax tree by applying plugins to it.

		If asynchronous plugins are configured an error is thrown.

		Note: `runSync` freezes the processor if not already frozen.
	**/
	public function runSync(node:Node, ?file:VFileData):Node;

	/**
		Process the given representation of a file as configured on the
		processor. The process invokes `parse`, `run`, and `stringify`
		internally.

		Note: `process` freezes the processor if not already frozen.
	**/
	public function process(value:EitherType<String, VFile>, ?done:Error->VFile->Void):Promise<VFile>;

	/**
		Process the given representation of a file as configured on the
		processor. The process invokes `parse`, `run`, and `stringify`
		internally.

		If asynchronous plugins are configured an error is thrown.

		Note: `processSync` freezes the processor if not already frozen.
	**/
	public function processSync(value:EitherType<String, VFile>):VFile;

	/**
		Get or set information in an in-memory key-value store accessible to
		all phases of the process. An example is a list of HTML elements which
		are self-closing, which is needed when parsing, transforming, and
		compiling HTML.

		Returns:

		* `processor` — If setting, the processor on which `data` is invoked
		* `*` — If getting, the value at `key`

		Note:

		Setting information with `data` cannot occur on frozen processors.
		Invoke the processor first to create a new unfrozen processor.
	**/
	public function data<T>(key:String, ?value:T):EitherType<Processor, T>;

	/**
		Freeze a processor. Frozen processors are meant to be extended and not
		to be configured or processed directly.

		Once a processor is frozen it cannot be unfrozen. New processors
		functioning just like it can be created by invoking the processor.

		It’s possible to freeze processors explicitly, by calling `.freeze()`,
		but `.parse()`, `.run()`, `.stringify()`, and `.process()` call
		`.freeze()` to freeze a processor too.
	**/
	public function freeze():Processor;
}

