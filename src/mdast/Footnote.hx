package mdast;

import unist.Parent;

/**
	`Footnote` ([`Parent`][parent]) represents an inline marker, whose
	content relates to the document but is outside its flow.
**/
class Footnote extends Parent {
	public static inline var Type:String = "footnote";
}

