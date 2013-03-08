package com.instagal.tests {

	import com.adobe.utils.AGALMiniAssembler;
	import com.instagal.Shader;
	import flash.events.MouseEvent;
	import flash.utils.ByteArray;


	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.tests.CompareTest
	 */
	public class CompareTest extends BaseTest {

		protected var _agalVersion : int = 2;
		protected var _agalType : String;
		protected var _agalString : String;
		protected var _shader : Shader;
		
		
		
		
		
		public function CompareTest() {
			super();
		}


		override protected function _run() : Boolean {
			
			var legacyResult : ByteArray = new AGALMiniAssembler().assemble(_agalType, _agalString, _agalVersion);
			_shader = new Shader( _agalType, _agalVersion );
			_compile();
			var tresult : ByteArray = _shader.release();
			
			trace( "Compare agal values for ",_name );
			Utils.logBytes( legacyResult, 7 );
			Utils.logBytes( tresult, 7 );
			
			return Utils.compareBytes(legacyResult, tresult );
		}

		protected function _compile() : void {
		}


	}
}
