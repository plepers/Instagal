package com.instagal.tests {
	import regs.*;
	import com.instagal.regs.*;
	import flash.display3D.Context3DProgramType;
	/**
	 * @author plepers
	 */
	public class Indirect_op2_nomask extends CompareTest {
		
		public function Indirect_op2_nomask() {
			super();
			
			_agalType = Context3DProgramType.VERTEX;
			
			_agalString = 	"mov vt0, vc[vt0.x]   \n";		
			_agalString += 	"mov vt1, vc[vt1.y]   \n";		
			_agalString += 	"mov vt2, vc[vt2.z]   \n";		
			_agalString += 	"mov vt3, vc[vt3.w]   \n";		
			_agalString += 	"mov vt4, vc[va4.x]   \n";		
			_agalString += 	"mov vt5, vc[va5.y]   \n";		
			_agalString += 	"mov vt6, vc[va6.z]   \n";		
			_agalString += 	"mov vt7, vc[va7.w]   \n";		
			_agalString += 	"mov vt0, vc[vc0.x]   \n";		
			_agalString += 	"mov vt0, vc[vc0.y]   \n";		
			_agalString += 	"mov vt1, vc[vc1.z]   \n";		
			_agalString += 	"mov vt2, vc[vc2.w]   \n";		
			_agalString += 	"mov vt0, vc[op.x]    \n";		
			_agalString += 	"mov vt0, vc[op.y]    \n";		
			_agalString += 	"mov vt1, vc[op.z]    \n";		
			_agalString += 	"mov vt2, vc[op.w]    \n";		
			
		}
		
		
		
		override protected function _compile() : void {
			
			_shader.mov( t0 , c( t0 ^ x ) );
			_shader.mov( t1 , c( t1 ^ y ) );
			_shader.mov( t2 , c( t2 ^ z ) );
			_shader.mov( t3 , c( t3 ^ w ) );
			_shader.mov( t4 , c( a4 ^ x ) );
			_shader.mov( t5 , c( a5 ^ y ) );
			_shader.mov( t6 , c( a6 ^ z ) );
			_shader.mov( t7 , c( a7 ^ w ) );
			_shader.mov( t0 , c( c0 ^ x ) );
			_shader.mov( t0 , c( c0 ^ y ) );
			_shader.mov( t1 , c( c1 ^ z ) );
			_shader.mov( t2 , c( c2 ^ w ) );
			_shader.mov( t0 , c( op ^ x ) );
			_shader.mov( t0 , c( op ^ y ) );
			_shader.mov( t1 , c( op ^ z ) );
			_shader.mov( t2 , c( op ^ w ) );
			
		}
		
	}
}
