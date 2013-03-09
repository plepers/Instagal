package com.instagal.tests {
	import regs.*;
	import com.instagal.regs.*;
	import flash.display3D.Context3DProgramType;
	/**
	 * @author plepers
	 */
	public class Indirect_mask_off extends CompareTest {
		public function Indirect_mask_off() {
			super();
			
			_agalType = Context3DProgramType.VERTEX;
			
			_agalString = 	"";		
			_agalString += 	"mov vt0, vc[vt0.x+0].wz     \n";		
			_agalString += 	"mov vt1, vc[vt1.y+1].zw     \n";		
			_agalString += 	"mov vt2, vc[vt2.z+2].wyzw   \n";		
			_agalString += 	"mov vt3, vc[vt3.w+3].xyzw   \n";		
			_agalString += 	"mov vt4, vc[vt4.x+4].x      \n";		
			_agalString += 	"mov vt5, vc[vt5.y+5].zzzx   \n";		
			_agalString += 	"mov vt6, vc[vt6.z+6].xyz    \n";		
			_agalString += 	"mov vt7, vc[vt7.w+7].xyyz   \n";		
			_agalString += 	"mov vt0, vc[vt0.x+8].xyz    \n";		
			_agalString += 	"mov vt0, vc[vt0.y+9].xyzw   \n";		
			_agalString += 	"mov vt1, vc[vt1.z+10].xyzx   \n";		
			_agalString += 	"mov vt2, vc[vt2.w+11].xyzy   \n";		
			_agalString += 	"mov vt0, vc[vt0.x+12].xz     \n";		
			_agalString += 	"mov vt1, vc[vt1.y+13].xzw    \n";		
			_agalString += 	"mov vt2, vc[vt2.z+14].xzwx   \n";		
			_agalString += 	"mov vt3, vc[vt3.w+15].xzwy   \n";		
			_agalString += 	"mov vt4, vc[vt4.x+16].xzwz   \n";		
			_agalString += 	"mov vt5, vc[vt5.y+17].xzx    \n";		
			_agalString += 	"mov vt6, vc[vt6.z+18].xzxw   \n";		
			_agalString += 	"mov vt7, vc[vt7.w+19].xzxy   \n";		
			_agalString += 	"mov vt0, vc[vt0.x+20].xzxz   \n";		
			_agalString += 	"mov vt0, vc[vt0.y+21].xzy    \n";		
			_agalString += 	"mov vt1, vc[vt1.z+22].xzyw   \n";		
			_agalString += 	"mov vt2, vc[vt2.w+23].xzyx   \n";		
			_agalString += 	"mov vt0, vc[vt0.x+24].xzyz   \n";		
			_agalString += 	"mov vt1, vc[vt1.y+25].xzzw   \n";		
			_agalString += 	"mov vt2, vc[vt2.z+26].xzzx   \n";		
			_agalString += 	"mov vt3, vc[vt3.w+27].xzzy   \n";		
			_agalString += 	"mov vt4, vc[vt4.x+28].y      \n";		
			_agalString += 	"mov vt5, vc[vt5.y+29].yw     \n";		
			_agalString += 	"mov vt6, vc[vt6.z+20].ywwx   \n";		
			_agalString += 	"mov vt7, vc[vt7.w+31].ywwy   \n";		
			_agalString += 	"mov vt0, vc[vt0.x+32].ywwz   \n";		
			_agalString += 	"mov vt0, vc[vt0.y+33].ywx    \n";		
			_agalString += 	"mov vt1, vc[vt1.z+34].ywxw   \n";		
			_agalString += 	"mov vt2, vc[vt2.w+35].ywxy   \n";		
			_agalString += 	"mov vt0, vc[vt0.x+36].ywxz   \n";		
			_agalString += 	"mov vt1, vc[vt1.y+37].ywy    \n";		
			_agalString += 	"mov vt2, vc[vt2.z+38].ywyw   \n";		
			_agalString += 	"mov vt3, vc[vt3.w+39].ywyx   \n";		
			_agalString += 	"mov vt4, vc[vt4.x+30].ywyz   \n";		
			_agalString += 	"mov vt5, vc[vt5.y+41].ywz    \n";		
			_agalString += 	"mov vt6, vc[vt6.z+42].ywzw   \n";		
			_agalString += 	"mov vt7, vc[vt7.w+43].ywzx   \n";		
			_agalString += 	"mov vt0, vc[vt0.x+44].ywzy   \n";		
			_agalString += 	"mov vt0, vc[vt0.y+45].yx     \n";		
			_agalString += 	"mov vt1, vc[vt1.z+46].yxw    \n";		
			_agalString += 	"mov vt2, vc[vt2.w+47].yxwx   \n";		
			_agalString += 	"mov vt0, vc[vt0.x+48].yxwy   \n";		
			_agalString += 	"mov vt1, vc[vt1.y+49].yxwz   \n";		
			_agalString += 	"mov vt2, vc[vt2.z+50].yxxw   \n";		
			_agalString += 	"mov vt3, vc[vt3.w+51].yxxy   \n";		
			_agalString += 	"mov vt4, vc[vt4.x+52].yxxz   \n";		
			_agalString += 	"mov vt5, vc[vt5.y+53].yxy    \n";		
			_agalString += 	"mov vt6, vc[vt6.z+54].yxyw   \n";		
			_agalString += 	"mov vt7, vc[vt7.w+55].yxyx   \n";		
			_agalString += 	"mov vt0, vc[vt0.x+56].yxyz   \n";		
			_agalString += 	"mov vt0, vc[vt0.y+57].yxz    \n";		
			_agalString += 	"mov vt1, vc[vt1.z+58].yxzw   \n";		
			_agalString += 	"mov vt2, vc[vt2.w+59].yxzx   \n";		
			_agalString += 	"mov vt0, vc[vt0.x+60].yxzy   \n";		
			_agalString += 	"mov vt1, vc[vt1.y+61].yyw    \n";		
			_agalString += 	"mov vt2, vc[vt2.z+62].yywx   \n";		
			_agalString += 	"mov vt3, vc[vt3.w+63].yywy   \n";		
			_agalString += 	"mov vt5, vc[vt5.y+2].yyx    \n";		
			_agalString += 	"mov vt6, vc[vt6.z+2].yyxw   \n";		
			_agalString += 	"mov vt7, vc[vt7.w+2].yyxy   \n";		
			_agalString += 	"mov vt0, vc[vt0.x+2].yyxz   \n";		
			_agalString += 	"mov vt0, vc[vt0.y+2].yyyw   \n";		
			_agalString += 	"mov vt1, vc[vt1.z+2].yyyx   \n";		
			
		}
		
		
		
		override protected function _compile() : void {
			
			_shader.mov( t0 , c( t0 ^ x ) +0  ^ wz    );
			_shader.mov( t1 , c( t1 ^ y ) +1  ^ zw    );
			_shader.mov( t2 , c( t2 ^ z ) +2  ^ wyzw  );
			_shader.mov( t3 , c( t3 ^ w ) +3  ^ xyzw  );
			_shader.mov( t4 , c( t4 ^ x ) +4  ^ x     );
			_shader.mov( t5 , c( t5 ^ y ) +5  ^ zzzx  );
			_shader.mov( t6 , c( t6 ^ z ) +6  ^ xyz   );
			_shader.mov( t7 , c( t7 ^ w ) +7  ^ xyyz  );
			_shader.mov( t0 , c( t0 ^ x ) +8  ^ xyz   );
			_shader.mov( t0 , c( t0 ^ y ) +9  ^ xyzw  );
			_shader.mov( t1 , c( t1 ^ z ) +10 ^ xyzx  );
			_shader.mov( t2 , c( t2 ^ w ) +11 ^ xyzy  );
			_shader.mov( t0 , c( t0 ^ x ) +12 ^ xz    );
			_shader.mov( t1 , c( t1 ^ y ) +13 ^ xzw   );
			_shader.mov( t2 , c( t2 ^ z ) +14 ^ xzwx  );
			_shader.mov( t3 , c( t3 ^ w ) +15 ^ xzwy  );
			_shader.mov( t4 , c( t4 ^ x ) +16 ^ xzwz  );
			_shader.mov( t5 , c( t5 ^ y ) +17 ^ xzx   );
			_shader.mov( t6 , c( t6 ^ z ) +18 ^ xzxw  );
			_shader.mov( t7 , c( t7 ^ w ) +19 ^ xzxy  );
			_shader.mov( t0 , c( t0 ^ x ) +20 ^ xzxz  );
			_shader.mov( t0 , c( t0 ^ y ) +21 ^ xzy   );
			_shader.mov( t1 , c( t1 ^ z ) +22 ^ xzyw  );
			_shader.mov( t2 , c( t2 ^ w ) +23 ^ xzyx  );
			_shader.mov( t0 , c( t0 ^ x ) +24 ^ xzyz  );
			_shader.mov( t1 , c( t1 ^ y ) +25 ^ xzzw  );
			_shader.mov( t2 , c( t2 ^ z ) +26 ^ xzzx  );
			_shader.mov( t3 , c( t3 ^ w ) +27 ^ xzzy  );
			_shader.mov( t4 , c( t4 ^ x ) +28 ^ y     );
			_shader.mov( t5 , c( t5 ^ y ) +29 ^ yw    );
			_shader.mov( t6 , c( t6 ^ z ) +20 ^ ywwx  );
			_shader.mov( t7 , c( t7 ^ w ) +31 ^ ywwy  );
			_shader.mov( t0 , c( t0 ^ x ) +32 ^ ywwz  );
			_shader.mov( t0 , c( t0 ^ y ) +33 ^ ywx   );
			_shader.mov( t1 , c( t1 ^ z ) +34 ^ ywxw  );
			_shader.mov( t2 , c( t2 ^ w ) +35 ^ ywxy  );
			_shader.mov( t0 , c( t0 ^ x ) +36 ^ ywxz  );
			_shader.mov( t1 , c( t1 ^ y ) +37 ^ ywy   );
			_shader.mov( t2 , c( t2 ^ z ) +38 ^ ywyw  );
			_shader.mov( t3 , c( t3 ^ w ) +39 ^ ywyx  );
			_shader.mov( t4 , c( t4 ^ x ) +30 ^ ywyz  );
			_shader.mov( t5 , c( t5 ^ y ) +41 ^ ywz   );
			_shader.mov( t6 , c( t6 ^ z ) +42 ^ ywzw  );
			_shader.mov( t7 , c( t7 ^ w ) +43 ^ ywzx  );
			_shader.mov( t0 , c( t0 ^ x ) +44 ^ ywzy  );
			_shader.mov( t0 , c( t0 ^ y ) +45 ^ yx    );
			_shader.mov( t1 , c( t1 ^ z ) +46 ^ yxw   );
			_shader.mov( t2 , c( t2 ^ w ) +47 ^ yxwx  );
			_shader.mov( t0 , c( t0 ^ x ) +48 ^ yxwy  );
			_shader.mov( t1 , c( t1 ^ y ) +49 ^ yxwz  );
			_shader.mov( t2 , c( t2 ^ z ) +50 ^ yxxw  );
			_shader.mov( t3 , c( t3 ^ w ) +51 ^ yxxy  );
			_shader.mov( t4 , c( t4 ^ x ) +52 ^ yxxz  );
			_shader.mov( t5 , c( t5 ^ y ) +53 ^ yxy   );
			_shader.mov( t6 , c( t6 ^ z ) +54 ^ yxyw  );
			_shader.mov( t7 , c( t7 ^ w ) +55 ^ yxyx  );
			_shader.mov( t0 , c( t0 ^ x ) +56 ^ yxyz  );
			_shader.mov( t0 , c( t0 ^ y ) +57 ^ yxz   );
			_shader.mov( t1 , c( t1 ^ z ) +58 ^ yxzw  );
			_shader.mov( t2 , c( t2 ^ w ) +59 ^ yxzx  );
			_shader.mov( t0 , c( t0 ^ x ) +60 ^ yxzy  );
			_shader.mov( t1 , c( t1 ^ y ) +61 ^ yyw   );
			_shader.mov( t2 , c( t2 ^ z ) +62 ^ yywx  );
			_shader.mov( t3 , c( t3 ^ w ) +63 ^ yywy  );
			_shader.mov( t5 , c( t5 ^ y ) +2  ^ yyx   );
			_shader.mov( t6 , c( t6 ^ z ) +2  ^ yyxw  );
			_shader.mov( t7 , c( t7 ^ w ) +2  ^ yyxy  );
			_shader.mov( t0 , c( t0 ^ x ) +2  ^ yyxz  );
			_shader.mov( t0 , c( t0 ^ y ) +2  ^ yyyw  );
			_shader.mov( t1 , c( t1 ^ z ) +2  ^ yyyx  );
			
		}
		
	}
}
