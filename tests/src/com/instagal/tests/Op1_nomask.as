package com.instagal.tests {
	import com.instagal.regs.*;

	import flash.display3D.Context3DProgramType;

	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.tests.Op3_nomask
	 */
	public class Op1_nomask extends CompareTest {
		public function Op1_nomask() {
			super();

			_agalType = Context3DProgramType.FRAGMENT;

			_agalString = "kil fc0";
		}

		override protected function _compile() : void {
			_shader.kil(c0);
		}
	}
}
