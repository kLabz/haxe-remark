package mdast;

import unist.Text;

/**
	`InlineCode` ([`Text`][text]) occurs inline (see [`Code`][code] for
	blocks). Inline code does not sport a `lang` attribute.
**/
class InlineCode extends Text {
	public static inline var Type:String = "inlineCode";
}

