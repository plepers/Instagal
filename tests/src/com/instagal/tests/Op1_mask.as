package com.instagal.tests {

	import flash.display3D.Context3DProgramType;
	import regs.*;

	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.tests.Op3_nomask
	 */
	public class Op1_mask extends CompareTest {

		public function Op1_mask() {
			super();
			
			_agalType = Context3DProgramType.FRAGMENT;
			
			_agalString = 	"kil fc0.x    \n";
			_agalString += 	"kil fc0.zx	  \n";
			_agalString += 	"kil fc0.xxzx \n";
			_agalString += 	"kil fc0.wwzx \n";
			_agalString += 	"kil fc0.wwzx \n";
			_agalString += 	"kil fc0.wwz  \n";
			_agalString += 	"kil fc0.wwzw \n";
			_agalString += 	"kil fc0.wzyx \n";
			_agalString += 	"kil fc0.zx	  \n";
			_agalString += 	"kil ft0.xxzx \n";
			_agalString += 	"kil ft0.wwzx \n";
			_agalString += 	"kil ft0.wwzx \n";
			_agalString += 	"kil ft0.wwz  \n";
			_agalString += 	"kil ft0.wwzw \n";
			_agalString += 	"kil ft0.wzyx \n";
			_agalString += 	"kil  v0.zx	  \n";
			_agalString += 	"kil  v0.xxzx \n";
			_agalString += 	"kil  v0.wwzx \n";
			_agalString += 	"kil  v0.wwzx \n";
			_agalString += 	"kil  v0.wwz  \n";
			_agalString += 	"kil  v0.wwzw \n";
			_agalString += 	"kil  v0.wzyx \n";
			
		}
		
		
		
		override protected function _compile() : void {
			_shader.kil( c0 ^ x    );
			_shader.kil( c0 ^ zx   );
			_shader.kil( c0 ^ xxzx );
			_shader.kil( c0 ^ wwzx );
			_shader.kil( c0 ^ wwzx );
			_shader.kil( c0 ^ wwz  );
			_shader.kil( c0 ^ wwzw );
			_shader.kil( c0 ^ wzyx );
			_shader.kil( c0 ^ zx   );
			_shader.kil( t0 ^ xxzx );
			_shader.kil( t0 ^ wwzx );
			_shader.kil( t0 ^ wwzx );
			_shader.kil( t0 ^ wwz  );
			_shader.kil( t0 ^ wwzw );
			_shader.kil( t0 ^ wzyx );
			_shader.kil( v0 ^ zx   );
			_shader.kil( v0 ^ xxzx );
			_shader.kil( v0 ^ wwzx );
			_shader.kil( v0 ^ wwzx );
			_shader.kil( v0 ^ wwz  );
			_shader.kil( v0 ^ wwzw );
			_shader.kil( v0 ^ wzyx );
		}
		
		
		override protected function _run() : Boolean {
			return super._run();
		}

	}
}
