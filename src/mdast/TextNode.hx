package mdast;

import unist.Text;

/**
	`TextNode` ([`Text`][text]) represents everything that is just text.
	Note that its `type` property is `text`, but it is different from
	[`Text`][text].
**/
class TextNode extends Text {
	public static inline var Type:String = "text";
}

