package com.instagal.bench {
	import flash.display.Sprite;
	import flash.events.MouseEvent;

	/**
	 * @author plepers
	 */
	public class BenchMain extends Sprite {
//		private var _bench : BenchCompiler;
		private var _bench : RevertBenchCompiler;
		public function BenchMain() {
			
			stage.addEventListener( MouseEvent.CLICK, onClick );
//			_bench = new BenchCompiler();
			_bench = new RevertBenchCompiler();
			addChild( _bench.tf );
		}

		private function onClick(event : MouseEvent) : void {
			_bench.run();
		}
	}
}
