package com.instagal.tests {
	import regs.*;
	import com.instagal.regs.*;
	import flash.display3D.Context3DProgramType;
	/**
	 * @author plepers
	 */
	public class Indirect_mask extends CompareTest {
		public function Indirect_mask() {
			super();
			
			_agalType = Context3DProgramType.VERTEX;
			
			_agalString = 	"";		
			_agalString += 	"mov vt0, vc[vt0.x].wz     \n";		
			_agalString += 	"mov vt1, vc[vt1.y].zw     \n";		
			_agalString += 	"mov vt2, vc[vt2.z].wyzw   \n";		
			_agalString += 	"mov vt3, vc[vt3.w].xyzw   \n";		
			_agalString += 	"mov vt4, vc[vt4.x].x      \n";		
			_agalString += 	"mov vt5, vc[vt5.y].zzzx   \n";		
			_agalString += 	"mov vt6, vc[vt6.z].xyz    \n";		
			_agalString += 	"mov vt7, vc[vt7.w].xyyz   \n";		
			_agalString += 	"mov vt0, vc[vt0.x].xyz    \n";		
			_agalString += 	"mov vt0, vc[vt0.y].xyzw   \n";		
			_agalString += 	"mov vt1, vc[vt1.z].xyzx   \n";		
			_agalString += 	"mov vt2, vc[vt2.w].xyzy   \n";		
			_agalString += 	"mov vt0, vc[vt0.x].xz     \n";		
			_agalString += 	"mov vt1, vc[vt1.y].xzw    \n";		
			_agalString += 	"mov vt2, vc[vt2.z].xzwx   \n";		
			_agalString += 	"mov vt3, vc[vt3.w].xzwy   \n";		
			_agalString += 	"mov vt4, vc[vt4.x].xzwz   \n";		
			_agalString += 	"mov vt5, vc[vt5.y].xzx    \n";		
			_agalString += 	"mov vt6, vc[vt6.z].xzxw   \n";		
			_agalString += 	"mov vt7, vc[vt7.w].xzxy   \n";		
			_agalString += 	"mov vt0, vc[vt0.x].xzxz   \n";		
			_agalString += 	"mov vt0, vc[vt0.y].xzy    \n";		
			_agalString += 	"mov vt1, vc[vt1.z].xzyw   \n";		
			_agalString += 	"mov vt2, vc[vt2.w].xzyx   \n";		
			_agalString += 	"mov vt0, vc[vt0.x].xzyz   \n";		
			_agalString += 	"mov vt1, vc[vt1.y].xzzw   \n";		
			_agalString += 	"mov vt2, vc[vt2.z].xzzx   \n";		
			_agalString += 	"mov vt3, vc[vt3.w].xzzy   \n";		
			_agalString += 	"mov vt4, vc[vt4.x].y      \n";		
			_agalString += 	"mov vt5, vc[vt5.y].yw     \n";		
			_agalString += 	"mov vt6, vc[vt6.z].ywwx   \n";		
			_agalString += 	"mov vt7, vc[vt7.w].ywwy   \n";		
			_agalString += 	"mov vt0, vc[vt0.x].ywwz   \n";		
			_agalString += 	"mov vt0, vc[vt0.y].ywx    \n";		
			_agalString += 	"mov vt1, vc[vt1.z].ywxw   \n";		
			_agalString += 	"mov vt2, vc[vt2.w].ywxy   \n";		
			_agalString += 	"mov vt0, vc[vt0.x].ywxz   \n";		
			_agalString += 	"mov vt1, vc[vt1.y].ywy    \n";		
			_agalString += 	"mov vt2, vc[vt2.z].ywyw   \n";		
			_agalString += 	"mov vt3, vc[vt3.w].ywyx   \n";		
			_agalString += 	"mov vt4, vc[vt4.x].ywyz   \n";		
			_agalString += 	"mov vt5, vc[vt5.y].ywz    \n";		
			_agalString += 	"mov vt6, vc[vt6.z].ywzw   \n";		
			_agalString += 	"mov vt7, vc[vt7.w].ywzx   \n";		
			_agalString += 	"mov vt0, vc[vt0.x].ywzy   \n";		
			_agalString += 	"mov vt0, vc[vt0.y].yx     \n";		
			_agalString += 	"mov vt1, vc[vt1.z].yxw    \n";		
			_agalString += 	"mov vt2, vc[vt2.w].yxwx   \n";		
			_agalString += 	"mov vt0, vc[vt0.x].yxwy   \n";		
			_agalString += 	"mov vt1, vc[vt1.y].yxwz   \n";		
			_agalString += 	"mov vt2, vc[vt2.z].yxxw   \n";		
			_agalString += 	"mov vt3, vc[vt3.w].yxxy   \n";		
			_agalString += 	"mov vt4, vc[vt4.x].yxxz   \n";		
			_agalString += 	"mov vt5, vc[vt5.y].yxy    \n";		
			_agalString += 	"mov vt6, vc[vt6.z].yxyw   \n";		
			_agalString += 	"mov vt7, vc[vt7.w].yxyx   \n";		
			_agalString += 	"mov vt0, vc[vt0.x].yxyz   \n";		
			_agalString += 	"mov vt0, vc[vt0.y].yxz    \n";		
			_agalString += 	"mov vt1, vc[vt1.z].yxzw   \n";		
			_agalString += 	"mov vt2, vc[vt2.w].yxzx   \n";		
			_agalString += 	"mov vt0, vc[vt0.x].yxzy   \n";		
			_agalString += 	"mov vt1, vc[vt1.y].yyw    \n";		
			_agalString += 	"mov vt2, vc[vt2.z].yywx   \n";		
			_agalString += 	"mov vt3, vc[vt3.w].yywy   \n";		
			_agalString += 	"mov vt4, vc[vt4.x].yywz   \n";		
			_agalString += 	"mov vt5, vc[vt5.y].yyx    \n";		
			_agalString += 	"mov vt6, vc[vt6.z].yyxw   \n";		
			_agalString += 	"mov vt7, vc[vt7.w].yyxy   \n";		
			_agalString += 	"mov vt0, vc[vt0.x].yyxz   \n";		
			_agalString += 	"mov vt0, vc[vt0.y].yyyw   \n";		
			_agalString += 	"mov vt1, vc[vt1.z].yyyx   \n";		
			
		}
		
		
		
		override protected function _compile() : void {
			
			_shader.mov( t0 , c( t0 ^ x ) ^ wz    );
			_shader.mov( t1 , c( t1 ^ y ) ^ zw    );
			_shader.mov( t2 , c( t2 ^ z ) ^ wyzw  );
			_shader.mov( t3 , c( t3 ^ w ) ^ xyzw  );
			_shader.mov( t4 , c( t4 ^ x ) ^ x     );
			_shader.mov( t5 , c( t5 ^ y ) ^ zzzx  );
			_shader.mov( t6 , c( t6 ^ z ) ^ xyz   );
			_shader.mov( t7 , c( t7 ^ w ) ^ xyyz  );
			_shader.mov( t0 , c( t0 ^ x ) ^ xyz   );
			_shader.mov( t0 , c( t0 ^ y ) ^ xyzw  );
			_shader.mov( t1 , c( t1 ^ z ) ^ xyzx  );
			_shader.mov( t2 , c( t2 ^ w ) ^ xyzy  );
			_shader.mov( t0 , c( t0 ^ x ) ^ xz    );
			_shader.mov( t1 , c( t1 ^ y ) ^ xzw   );
			_shader.mov( t2 , c( t2 ^ z ) ^ xzwx  );
			_shader.mov( t3 , c( t3 ^ w ) ^ xzwy  );
			_shader.mov( t4 , c( t4 ^ x ) ^ xzwz  );
			_shader.mov( t5 , c( t5 ^ y ) ^ xzx   );
			_shader.mov( t6 , c( t6 ^ z ) ^ xzxw  );
			_shader.mov( t7 , c( t7 ^ w ) ^ xzxy  );
			_shader.mov( t0 , c( t0 ^ x ) ^ xzxz  );
			_shader.mov( t0 , c( t0 ^ y ) ^ xzy   );
			_shader.mov( t1 , c( t1 ^ z ) ^ xzyw  );
			_shader.mov( t2 , c( t2 ^ w ) ^ xzyx  );
			_shader.mov( t0 , c( t0 ^ x ) ^ xzyz  );
			_shader.mov( t1 , c( t1 ^ y ) ^ xzzw  );
			_shader.mov( t2 , c( t2 ^ z ) ^ xzzx  );
			_shader.mov( t3 , c( t3 ^ w ) ^ xzzy  );
			_shader.mov( t4 , c( t4 ^ x ) ^ y     );
			_shader.mov( t5 , c( t5 ^ y ) ^ yw    );
			_shader.mov( t6 , c( t6 ^ z ) ^ ywwx  );
			_shader.mov( t7 , c( t7 ^ w ) ^ ywwy  );
			_shader.mov( t0 , c( t0 ^ x ) ^ ywwz  );
			_shader.mov( t0 , c( t0 ^ y ) ^ ywx   );
			_shader.mov( t1 , c( t1 ^ z ) ^ ywxw  );
			_shader.mov( t2 , c( t2 ^ w ) ^ ywxy  );
			_shader.mov( t0 , c( t0 ^ x ) ^ ywxz  );
			_shader.mov( t1 , c( t1 ^ y ) ^ ywy   );
			_shader.mov( t2 , c( t2 ^ z ) ^ ywyw  );
			_shader.mov( t3 , c( t3 ^ w ) ^ ywyx  );
			_shader.mov( t4 , c( t4 ^ x ) ^ ywyz  );
			_shader.mov( t5 , c( t5 ^ y ) ^ ywz   );
			_shader.mov( t6 , c( t6 ^ z ) ^ ywzw  );
			_shader.mov( t7 , c( t7 ^ w ) ^ ywzx  );
			_shader.mov( t0 , c( t0 ^ x ) ^ ywzy  );
			_shader.mov( t0 , c( t0 ^ y ) ^ yx    );
			_shader.mov( t1 , c( t1 ^ z ) ^ yxw   );
			_shader.mov( t2 , c( t2 ^ w ) ^ yxwx  );
			_shader.mov( t0 , c( t0 ^ x ) ^ yxwy  );
			_shader.mov( t1 , c( t1 ^ y ) ^ yxwz  );
			_shader.mov( t2 , c( t2 ^ z ) ^ yxxw  );
			_shader.mov( t3 , c( t3 ^ w ) ^ yxxy  );
			_shader.mov( t4 , c( t4 ^ x ) ^ yxxz  );
			_shader.mov( t5 , c( t5 ^ y ) ^ yxy   );
			_shader.mov( t6 , c( t6 ^ z ) ^ yxyw  );
			_shader.mov( t7 , c( t7 ^ w ) ^ yxyx  );
			_shader.mov( t0 , c( t0 ^ x ) ^ yxyz  );
			_shader.mov( t0 , c( t0 ^ y ) ^ yxz   );
			_shader.mov( t1 , c( t1 ^ z ) ^ yxzw  );
			_shader.mov( t2 , c( t2 ^ w ) ^ yxzx  );
			_shader.mov( t0 , c( t0 ^ x ) ^ yxzy  );
			_shader.mov( t1 , c( t1 ^ y ) ^ yyw   );
			_shader.mov( t2 , c( t2 ^ z ) ^ yywx  );
			_shader.mov( t3 , c( t3 ^ w ) ^ yywy  );
			_shader.mov( t4 , c( t4 ^ x ) ^ yywz  );
			_shader.mov( t5 , c( t5 ^ y ) ^ yyx   );
			_shader.mov( t6 , c( t6 ^ z ) ^ yyxw  );
			_shader.mov( t7 , c( t7 ^ w ) ^ yyxy  );
			_shader.mov( t0 , c( t0 ^ x ) ^ yyxz  );
			_shader.mov( t0 , c( t0 ^ y ) ^ yyyw  );
			_shader.mov( t1 , c( t1 ^ z ) ^ yyyx  );
			
		}
		
	}
}
