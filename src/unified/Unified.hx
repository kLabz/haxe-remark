package unified;

import haxe.Constraints.Function;
import haxe.extern.EitherType;
import js.Error;
import js.Promise;

import unified.Plugin;
import unist.Node;
import vfile.VFile;

@:jsRequire('unified')
extern class Unified implements Processor {
	@:selfCall
	public static function unified():Unified;

	public var Parser:Function;
	public var Compiler:Function;

	@:overload(function(preset:Preset):Processor {})
	@:overload(function(list:PluginList):Processor {})
	public function use<T:{}>(plugin:Plugin<T>, ?options:T):Processor;

	public function parse(f:VFileData):Node;
	public function stringify(node:Node, ?file:VFileData):String;
	public function run(node:Node, ?file:VFileData, ?done:Error->?Node->?VFile->Void):Promise<Node>;
	public function runSync(node:Node, ?file:VFileData):Node;
	public function process(value:EitherType<String, VFile>, ?done:Error->VFile->Void):Promise<VFile>;
	public function processSync(value:EitherType<String, VFile>):VFile;
	public function data<T>(key:String, ?value:T):EitherType<Processor, T>;
	public function freeze():Processor;
}
