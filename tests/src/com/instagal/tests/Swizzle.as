package com.instagal.tests {
	import com.instagal.regs.*;

	import flash.display3D.Context3DProgramType;

	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.tests.Op3_nomask
	 */
	public class Swizzle extends CompareTest {
		public function Swizzle() {
			super();

			_agalType = Context3DProgramType.FRAGMENT;

			_agalString = "mov ft0.yzzz 	,   v0.wzzz    \n";
			_agalString += "mov ft0.zyyy 	,   v0.zwww    \n";
			_agalString += "rcp ft1.xyzz 	,   v1.wyzz    \n";
			_agalString += "frc ft2.wzxx	,   v2.wzxx    \n";
			_agalString += "rcp ft1.zyzz 	,   v1.zyzz    \n";
			_agalString += "frc ft2.xzxx	,   v2.xzxx    \n";
			_agalString += "sqt ft3.x 		,   v3.x       \n";
			_agalString += "rsq ft4.xx 	,   v4.xx      \n";
			_agalString += "log ft5.xxx 	,   v5.xxx     \n";
			_agalString += "exp ft6.xxxx   ,   v6.xxxx    \n";
			_agalString += "nrm ft7.y      , fc27.y       \n";
			_agalString += "sin  oc.yy     , fc26.yy      \n";
			_agalString += "cos ft0.yyy    , fc25.yyy     \n";
			_agalString += "abs ft1.yyyy   , fc24.yyyy    \n";
			_agalString += "neg ft2.z      , fc23.z       \n";
			_agalString += "sat ft3.zz     , fc22.zz      \n";
			_agalString += "ddx ft4.zzz    , fc21.zzz     \n";
			_agalString += "ddy ft5.zzzz   , fc20.zzzz    \n";
			_agalString += "sgn ft1.w      , fc15.w       \n";
			_agalString += "sgn ft1.ww     , fc15.ww      \n";
			_agalString += "sgn ft1.www    , fc15.www     \n";
			_agalString += "sgn ft1.wwww   , fc15.wwww    \n";
		}

		override protected function _compile() : void {
			_shader.mov(t0 ^ yz, v0 ^ wz);
			_shader.mov(t0 ^ zy, v0 ^ zw);
			_shader.rcp(t1 ^ xyz, v1 ^ wyz);
			_shader.frc(t2 ^ wzx, v2 ^ wzx);
			_shader.rcp(t1 ^ zyz, v1 ^ zyz);
			_shader.frc(t2 ^ xzx, v2 ^ xzx);
			_shader.sqt(t3 ^ x, v3 ^ x);
			_shader.rsq(t4 ^ x, v4 ^ x);
			_shader.log(t5 ^ x, v5 ^ x);
			_shader.exp(t6 ^ x, v6 ^ x);
			_shader.nrm(t7 ^ y, c27 ^ y);
			_shader.sin(oc ^ y, c26 ^ y);
			_shader.cos(t0 ^ y, c25 ^ y);
			_shader.abs(t1 ^ y, c24 ^ y);
			_shader.neg(t2 ^ z, c23 ^ z);
			_shader.sat(t3 ^ z, c22 ^ z);
			_shader.ddx(t4 ^ z, c21 ^ z);
			_shader.ddy(t5 ^ z, c20 ^ z);
			_shader.sgn(t1 ^ w, c15 ^ w);
			_shader.sgn(t1 ^ w, c15 ^ w);
			_shader.sgn(t1 ^ w, c15 ^ w);
			_shader.sgn(t1 ^ w, c15 ^ w);
		}

		override protected function _run() : Boolean {
			return super._run();
		}
	}
}
 /*
0A000000 04000502 0400002A 04000000 00000000 00000000 
0C000000 05000702 050000A4 04000000 00000000 00000000 
0D000000 06000702 060000E4 04000000 00000000 00000000 


0A000000 04000502 0400002A 04000000 00000000 00000000 
0C000000 05000702 050000A4 04000000 00000000 00000000 
0D000000 06000702 06000094 04000000 00000000 00000000
 * 
 */ 