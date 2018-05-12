package remark;

typedef RemarkParseOptions = {
	/**
		GFM mode turns on:

		* Fenced code blocks
		* Autolinking of URLs
		* Deletions (strikethrough)
		* Task lists
		* Tables

		Default: `true`
	**/
	@:optional var gfm:Bool;

	/**
		CommonMark mode allows:

		* Empty lines to split blockquotes
		* Parentheses (`(` and `)`) around for link and image titles
		* Any escaped ASCII-punctuation character
		* Closing parenthesis (`)`) as an ordered list marker
		* URL definitions (and footnotes, when enabled) in blockquotes

		CommonMark mode disallows:

		* Code directly following a paragraph
		* ATX-headings (`# Hash headings`) without spacing after opening hashes
		  or and before closing hashes
		* Setext headings (`Underline headings\n---`) when following a paragraph
		* Newlines in link and image titles
		* White space in link and image URLs in auto-links (links in brackets,
		  `<` and `>`)
		* Lazy blockquote continuation, lines not preceded by a closing angle
		  bracket (`>`), for lists, code, and thematicBreak

		Default: `false`
	**/
	@:optional var commonmark:Bool;

	/**
		Footnotes mode enables reference footnotes and inline footnotes. Both
		are wrapped in square brackets and preceded by a caret (`^`), and can
		be referenced from inside other footnotes.

		Default: `false`
	**/
	@:optional var footnotes:Bool;

	/**
		Blocks lets users define block-level HTML elements.

		Default: list of block HTML elements
	**/
	@:optional var blocks:Array<String>;

	/**
		Pedantic mode turns on:

		* Emphasis (`_alpha_`) and importance (`__bravo__`) with underscores in
		  words
		* Unordered lists with different markers (`*`, `-`, `+`)
		* If commonmark is also turned on, ordered lists with different markers
		  (`.`, `)`)
		* And pedantic mode removes less spaces in list-items (at most four,
		  instead of the whole indent)

		Default: `false`
	**/
	@:optional var pedantic:Bool;
}

