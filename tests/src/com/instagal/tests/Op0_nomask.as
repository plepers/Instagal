package com.instagal.tests {
	import flash.display3D.Context3DProgramType;

	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.tests.Op3_nomask
	 */
	public class Op0_nomask extends CompareTest {
		public function Op0_nomask() {
			super();

			_agalType = Context3DProgramType.VERTEX;

			_agalString = "els\n";
			_agalString += "eif";
		}

		override protected function _compile() : void {
			_shader.els();
			_shader.eif();
		}
	}
}
