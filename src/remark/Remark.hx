package remark;

import unified.Plugin;

@:jsRequire('remark')
extern class Remark {
	public static var parse:AttacherPlugin<RemarkParseOptions>;
}
