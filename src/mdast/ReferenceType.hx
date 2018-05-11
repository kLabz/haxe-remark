package mdast;

@:enum abstract ReferenceType(String) from String to String {
	var Shortcut = "shortcut";
	var Collapsed = "collapsed";
	var Full = "full";
}

