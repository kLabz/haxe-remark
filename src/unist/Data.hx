package unist;

/**
	Data represents data associated with any node.  `Data` is a scope for
	plug-ins to store any information.  For example, [`remark-html`][remark-html]
	uses `hProperties` to let other plug-ins specify properties added to the
	compiled HTML element.
**/
typedef Data = {};

