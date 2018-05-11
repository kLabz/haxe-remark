package;

import haxe.Resource;

import buddy.SingleSuite;

import remark.RemarkParse;
import unified.Unified.unified;

using buddy.Should;

class RemarkParseTests extends SingleSuite {
	public function new() {
		describe('TODO', {
			it('should ...', {
				var a = unified()
					.use(RemarkParse, {gfm: true, commonmark: true})
					.parse(Resource.getString('md-readme'));

				trace(a);
			});
		});
	}
}
