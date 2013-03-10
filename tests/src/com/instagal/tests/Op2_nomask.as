package com.instagal.tests {
	import com.instagal.regs.*;

	import flash.display3D.Context3DProgramType;

	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.tests.Op3_nomask
	 */
	public class Op2_nomask extends CompareTest {
		public function Op2_nomask() {
			super();

			_agalType = Context3DProgramType.FRAGMENT;

			_agalString = "mov ft0 , v0   \n";
			_agalString += "rcp ft1 , v1   \n";
			_agalString += "frc ft2 , v2   \n";
			_agalString += "sqt ft3 , v3   \n";
			_agalString += "rsq ft4 , v4   \n";
			_agalString += "log ft5 , v5   \n";
			_agalString += "exp ft6 , v6   \n";
			_agalString += "nrm ft7 , fc27 \n";
			_agalString += "sin oc  , fc26 \n";
			_agalString += "cos ft0 , fc25 \n";
			_agalString += "abs ft1 , fc24 \n";
			_agalString += "neg ft2 , fc23 \n";
			_agalString += "sat ft3 , fc22 \n";
			_agalString += "ddx ft4 , fc21 \n";
			_agalString += "ddy ft5 , fc20 \n";
			// _agalString += 	"ife ft6 , fc19 \n";
			// _agalString += 	"ine ft7 , fc18 \n";
			// _agalString += 	"ifg oc  , fc17 \n";
			// _agalString += 	"ifl ft0 , fc16 \n";
			_agalString += "sgn ft1 , fc15 "  ;
		}

		override protected function _compile() : void {
			_shader.mov(t0, v0);
			_shader.rcp(t1, v1);
			_shader.frc(t2, v2);
			_shader.sqt(t3, v3);
			_shader.rsq(t4, v4);
			_shader.log(t5, v5);
			_shader.exp(t6, v6);
			_shader.nrm(t7, c27);
			_shader.sin(oc, c26);
			_shader.cos(t0, c25);
			_shader.abs(t1, c24);
			_shader.neg(t2, c23);
			_shader.sat(t3, c22);
			_shader.ddx(t4, c21);
			_shader.ddy(t5, c20);
			// _shader.ife( t6 , c19  );
			// _shader.ine( t7 , c18  );
			// _shader.ifg( oc , c17  );
			// _shader.ifl( t0 , c16  );
			_shader.sgn(t1, c15);
		}
	}
}
