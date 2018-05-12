package;

import haxe.Resource;

import buddy.SingleSuite;

import remark.Remark;
import remark.RemarkParse;
import unified.Unified.unified;

using buddy.Should;

class RemarkParseTests extends SingleSuite {
	public function new() {
		describe('TODO', {
			it('should ...', {
				var options = {gfm: true, commonmark: true};

				var a = unified()
					.use(RemarkParse.parse, options)
					.parse(Resource.getString('md-readme'));
				// trace(a);

				var b = Remark.parse(Resource.getString('md-readme'), options);
				// trace(b);
			});
		});
	}
}
