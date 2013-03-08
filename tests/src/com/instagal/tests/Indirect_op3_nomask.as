package com.instagal.tests {
	import regs.*;

	import com.instagal.regs.c;

	import flash.display3D.Context3DProgramType;

	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.tests.Op3_nomask
	 */
	public class Indirect_op3_nomask extends CompareTest {
		
		public function Indirect_op3_nomask() {
			super();
			
			_agalType = Context3DProgramType.VERTEX;
			
			
			_agalString = 	"add vt0,  v0           , vc[vt0.x]  \n";		
			_agalString += 	"sub vt1,  v1           , vc[vt1.y]  \n";		
			_agalString += 	"mul vt2 , v2           , vc[vt2.z]  \n";
			_agalString += 	"div vt3 , v3           , vc[vt3.w]  \n";
			_agalString += 	"min vt4 , v4           , vc[va4.x]  \n";
			_agalString += 	"max vt5 , v5           , vc[va5.y]  \n";
			_agalString += 	"pow vt6 , v6           , vc[va6.z]  \n";
			_agalString += 	"crs vt7 , vc[vt0.x]    , vc[va7.w]  \n";
			_agalString += 	"dp3  op , vc[vt1.y]    , vc[vc0.x]  \n";
			_agalString += 	"dp4 vt0 , vc[vt2.z]    , vc[vc0.y]  \n";
			_agalString += 	"m33 vt1 , vc[vt3.w]    , vc[vc1.z]  \n";
			_agalString += 	"m44 vt2 , vc[va4.x]    , vc[vc2.w]  \n";
			_agalString += 	"m34 vt3 , vc[va5.y]    , vc[op.x]  \n";
			_agalString += 	"m34 vt3 , vc[va6.z]    , vc[op.y]  \n";
			_agalString += 	"m34 vt3 , vc[va7.w]    , vc[op.z]  \n";
			_agalString += 	"m34 vt3 , vc[vc0.x]    , vc[op.w]  \n";
			_agalString += 	"sge vt6 , vc[vc0.y]    , v2    \n";
			_agalString += 	"slt vt7 , vc[vc1.z]    , v3    \n";
			_agalString += 	"seq  op , vc[vc2.w]    , v4    \n";
			_agalString += 	"sne vt0 , vc[op.x]     , v5    \n";
			_agalString += 	"sne vt0 , vc[op.y]     , v5    \n";
			_agalString += 	"sne vt0 , vc[op.z]     , v5    \n";
			_agalString += 	"sne vt0 , vc[op.w]     , v5    \n";
			
		}
		
		
		override protected function _compile() : void {
			_shader.add( t0,  v0         , c(t0^x)  );
			_shader.sub( t1,  v1         , c(t1^y)  );
			_shader.mul( t2 , v2         , c(t2^z)  );
			_shader.div( t3 , v3         , c(t3^w)  );
			_shader.min( t4 , v4         , c(a4^x)  );
			_shader.max( t5 , v5         , c(a5^y)  );
			_shader.pow( t6 , v6         , c(a6^z)  );
			_shader.crs( t7 , c(t0^x)    , c(a7^w)  );
			_shader.dp3( oc , c(t1^y)    , c(c0^x)  );
			_shader.dp4( t0 , c(t2^z)    , c(c0^y)  );
			_shader.m33( t1 , c(t3^w)    , c(c1^z)  );
			_shader.m44( t2 , c(a4^x)    , c(c2^w)  );
			_shader.m34( t3 , c(a5^y)    , c(op^x)  );
			_shader.m34( t3 , c(a6^z)    , c(op^y)  );
			_shader.m34( t3 , c(a7^w)    , c(op^z)  );
			_shader.m34( t3 , c(c0^x)    , c(op^w)  );
			_shader.sge( t6 , c(c0^y)    , v2       );
			_shader.slt( t7 , c(c1^z)    , v3       );
			_shader.seq( oc , c(c2^w)    , v4       );
			_shader.sne( t0 , c(op^x)    , v5       );
			_shader.sne( t0 , c(op^y)    , v5       );
			_shader.sne( t0 , c(op^z)    , v5       );
			_shader.sne( t0 , c(op^w)    , v5       );
		}

	}
}

