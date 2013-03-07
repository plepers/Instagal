package com.instagal.tests {

	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.tests.UnitTests
	 */
	public class UnitTests extends Sprite {


		public function UnitTests() {
			stg = stage;
			
			_sinit();
			
			new Op0_nomask().run();
			new Op1_nomask().run();
			new Op2_nomask().run();
			new Op3_nomask().run();
			
			stage.addChild( _console );
		}

		private static function _sinit() : void {
			if( _isinit ) return;
			
			_console = new TextField();
			_console.autoSize = TextFieldAutoSize.LEFT;
			_console.wordWrap = false;
			_console.multiline = true;
			
			_console.defaultTextFormat = new TextFormat( "_sans", 12, 0x303030 );
			
			_isinit = true;
		}

		private static var _console : TextField;
		private static var _isinit : Boolean = false;

		static public function get console() : TextField {
			return _console;
		}
		
		
	}
}
