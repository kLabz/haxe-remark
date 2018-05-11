package mdast;

import unist.Text;

/**
	`Code` ([`Text`][text]) occurs at block level (see
	[`InlineCode`][inlinecode] for code spans).  `Code` sports a language
	tag (when using GitHub Flavoured Markdown fences with a flag, `null`
	otherwise).
**/
class Code extends Text {
	public static inline var Type:String = "code";

	public var lang:Null<String>;
}

