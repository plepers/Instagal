package com.instagal.tests {
	import com.instagal.regs.*;

	import flash.display3D.Context3DProgramType;

	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.tests.Op3_nomask
	 */
	public class SimpleMov extends CompareTest {
		public function SimpleMov() {
			super();

			_agalType = Context3DProgramType.FRAGMENT;

			_agalString = "mov ft0 , v0   \n";
		}

		override protected function _compile() : void {
			_shader.mov(t0, v0);
		}
	}
}
