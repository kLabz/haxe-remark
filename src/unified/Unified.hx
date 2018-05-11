package unified;

@:jsRequire('unified')
extern class Unified {
	public function new();
	public function use<T:{}>(plugin:Dynamic, ?options:T):Unified;
	public function parse(f:Dynamic):Dynamic;

	@:selfCall
	public static function unified():Unified;
}

