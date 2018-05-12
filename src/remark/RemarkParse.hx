package remark;

import unified.Plugin;

@:jsRequire('remark-parse')
extern class RemarkParse {
	@:selfCall
	public static var parse:AttacherPlugin<RemarkParseOptions>;
}

