
package com.instagal.tests {
	import regs.*;

	import flash.display3D.Context3DProgramType;

	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.tests.Op3_nomask
	 */
	public class Op3_nomask extends CompareTest {

		public function Op3_nomask() {
			super();
			
			_agalType = Context3DProgramType.FRAGMENT;
			
			
			_agalString = 	"add ft0,  v0  , fc27  \n";		
			_agalString += 	"sub ft1,  v1  , fc26  \n";		
			_agalString += 	"mul ft2 , v2  , fc25  \n";
			_agalString += 	"div ft3 , v3  , fc24  \n";
			_agalString += 	"min ft4 , v4  , fc23  \n";
			_agalString += 	"max ft5 , v5  , fc22  \n";
			_agalString += 	"pow ft6 , v6  , fc21  \n";
			_agalString += 	"crs ft7 , fc27, fc20  \n";
			_agalString += 	"dp3 oc  , fc26, fc19  \n";
			_agalString += 	"dp4 ft0 , fc25, fc18  \n";
			_agalString += 	"m33 ft1 , fc24, fc17  \n";
			_agalString += 	"m44 ft2 , fc23, fc16  \n";
			_agalString += 	"m34 ft3 , fc22, fc15  \n";
//			_agalString += 	"ted ft4 , fc21, v0    \n";
//			_agalString += 	"tex ft5 , fc20, v1    \n";
			_agalString += 	"sge ft6 , fc19, v2    \n";
			_agalString += 	"slt ft7 , fc18, v3    \n";
			_agalString += 	"seq oc  , fc17, v4    \n";
			_agalString += 	"sne ft0 , fc16, v5    \n";
			
		}
		
		
		
		override protected function _compile() : void {
			_shader.add( t0,  v0  , c27  );
			_shader.sub( t1,  v1  , c26  );
			_shader.mul( t2 , v2  , c25  );
			_shader.div( t3 , v3  , c24  );
			_shader.min( t4 , v4  , c23  );
			_shader.max( t5 , v5  , c22  );
			_shader.pow( t6 , v6  , c21  );
			_shader.crs( t7 , c27 , c20  );
			_shader.dp3( oc , c26 , c19  );
			_shader.dp4( t0 , c25 , c18  );
			_shader.m33( t1 , c24 , c17  );
			_shader.m44( t2 , c23 , c16  );
			_shader.m34( t3 , c22 , c15  );
//			_shader.ted( t4 , c21 , v0   );
//			_shader.tex( t5 , c20 , v1   );
			_shader.sge( t6 , c19 , v2   );
			_shader.slt( t7 , c18 , v3   );
			_shader.seq( oc , c17 , v4   );
			_shader.sne( t0 , c16 , v5   );
		}
		
		
		override protected function _run() : Boolean {
			return super._run();
		}

	}
}

