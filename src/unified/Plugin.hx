package unified;

import haxe.Constraints.Function;
import haxe.extern.EitherType;
import js.Error;
import js.Promise;

import unist.Node;
import vfile.VFile;

/**
	**unified** plugins change the way the applied-on processor works in the
	following ways:

	* They modify the processor
	* They transform syntax tree representation of files
	* They modify metadata of files

	Plugins are a concept. They materialise as `AttacherPlugin`.
**/
typedef Plugin<T> = AttacherPlugin<T>;

/**
	An attacher is the thing passed to `Processor.use`. It configures the
	processor and in turn can receive options.

	Attachers can configure processors, such as by interacting with parsers and
	compilers, linking them to other processors, or by specifying how the
	syntax tree is handled.

	Context

	The context object is set to the invoked on `Processor`.

	Note

	Attachers are invoked when the processor is frozen: either when `.freeze()`
	is called explicitly, or when `.parse()`, `.run()`, `.stringify()`, or
	`.process()` is called for the first time`.
**/
@:callable
abstract AttacherPlugin<TOption>(Function)
	from AttacherPlugin1<TOption>
	from AttacherPlugin2<TOption> {}

private typedef AttacherPlugin1<TOptions> = ?TOptions -> Void;
private typedef AttacherPlugin2<TOptions> = ?TOptions -> Transformer;

/**
	Transformers modify the syntax tree or metadata of a file. A transformer is
	a function which is invoked each time a file is passed through the
	transform phase. If an error occurs (either because it’s thrown, returned,
	rejected, or passed to `next`), the process stops.

	The transformation process in unified is handled by trough, see it’s documentation for the exact semantics of transformers.

	Returns

	* Error — Can be returned to stop the process
	* Node — Can be returned and results in further transformations and stringifys to be performed on the new tree
	* Promise — If a promise is returned, the function is asynchronous
**/
typedef Transformer = Node -> VFile -> ?Function -> TransformerReturn;
typedef TransformerReturn = EitherType<Error, EitherType<Node, Promise<Node>>>;

typedef PluginPair<T> = Array<EitherType<Plugin<T>, T>>;
typedef PluginList = Array<EitherType<Plugin<Any>, EitherType<Preset, PluginPair<Any>>>>;

/**
	Presets provide a potentially sharable way to configure processors. They
	can contain multiple plugins and optionally settings as well.
**/
typedef Preset = {
	@:optional var settings:Any;
	@:optional var plugins:PluginList;
}

