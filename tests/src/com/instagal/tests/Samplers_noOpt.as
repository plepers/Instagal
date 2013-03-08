package com.instagal.tests {
	import regs.*;

	import flash.display3D.Context3DProgramType;

	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.tests.Op3_nomask
	 */
	public class Samplers_noOpt extends CompareTest {
		
		public function Samplers_noOpt() {
			super();
			
			_agalType = Context3DProgramType.FRAGMENT;
			
			_agalString = "";
			_agalString += 	"ted ft4 , v0, fs0<2d, nearest>   \n";
			_agalString += 	"tex ft5 , v1, fs1   \n";
			_agalString += 	"ted ft4 , v2, fs2<nearest>   \n";
			_agalString += 	"tex ft5 , v3, fs3<>   \n";
			_agalString += 	"ted ft4 , v4, fs4<nearest, 2d>   \n";
			_agalString += 	"tex ft5 , v5, fs5<nearest, 2d>   \n";
			_agalString += 	"ted ft4 , v6, fs6  \n";
			_agalString += 	"tex ft5 , v7, fs7<nearest, 2d>   \n";
			
		}
		
		
		
		override protected function _compile() : void {
			_shader.ted( t4, v0, s0 );
			_shader.tex( t5, v1, s1 );
			_shader.ted( t4, v2, s2 );
			_shader.tex( t5, v3, s3 );
			_shader.ted( t4, v4, s4 );
			_shader.tex( t5, v5, s5 );
			_shader.ted( t4, v6, s6 );
			_shader.tex( t5, v7, s7 );
		}

	}
}

