package com.instagal.tests {
	import com.instagal.regs.*;

	import flash.display3D.Context3DProgramType;

	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.tests.Op3_nomask
	 */
	public class Op2_mask extends CompareTest {
		public function Op2_mask() {
			super();

			_agalType = Context3DProgramType.FRAGMENT;

			_agalString = "mov ft0.yz 	,   v0.wz      \n";
			_agalString += "mov ft0.zy 	,   v0.zw      \n";
			_agalString += "rcp ft1.xyzw 	,   v1.wyzw    \n";
			_agalString += "frc ft2.wzxy	,   v2.xyzw    \n";
			_agalString += "sqt ft3.x 		,   v3.x       \n";
			_agalString += "rsq ft4.xxxz 	,   v4.zzzx    \n";
			_agalString += "log ft5.xyz 	,   v5.xyz     \n";
			_agalString += "exp ft6.xyyz   ,   v6.xyyz    \n";
			_agalString += "nrm ft7.xyz    , fc27.xyz     \n";
			_agalString += "sin  oc.xyzw   , fc26.xyzw    \n";
			_agalString += "cos ft0.xyzx   , fc25.xyzx    \n";
			_agalString += "abs ft1.xyzy   , fc24.xyzy    \n";
			_agalString += "neg ft2.xz     , fc23.xz      \n";
			_agalString += "sat ft3.xzw    , fc22.xzw     \n";
			_agalString += "ddx ft4.xzwx   , fc21.xzwx    \n";
			_agalString += "ddy ft5.xzwy   , fc20.xzwy    \n";
			_agalString += "sgn ft1.xzwz   , fc15.xzwz    \n";
			_agalString += "exp ft6.xzx    ,   v6.xzx     \n";
			_agalString += "nrm ft7.xzxw   , fc27.xzxw    \n";
			_agalString += "sin  oc.xzxy   , fc26.xzxy    \n";
			_agalString += "cos ft0.xzxz   , fc25.xzxz    \n";
			_agalString += "abs ft1.xzy    , fc24.xzy     \n";
			_agalString += "neg ft2.xzyw   , fc23.xzyw    \n";
			_agalString += "sat ft3.xzyx   , fc22.xzyx    \n";
			_agalString += "ddx ft4.xzyz   , fc21.xzyz    \n";
			_agalString += "ddy ft5.xzzw   , fc20.xzzw    \n";
			_agalString += "sgn ft1.xzzx   , fc15.xzzx    \n";
			_agalString += "exp ft6.xzzy   ,   v6.xzzy    \n";
			_agalString += "nrm ft7.y      , fc27.y       \n";
			_agalString += "sin  oc.yw     , fc26.yw      \n";
			_agalString += "cos ft0.ywwx   , fc25.ywwx    \n";
			_agalString += "abs ft1.ywwy   , fc24.ywwy    \n";
			_agalString += "neg ft2.ywwz   , fc23.ywwz    \n";
			_agalString += "sat ft3.ywx    , fc22.ywx     \n";
			_agalString += "ddx ft4.ywxw   , fc21.ywxw    \n";
			_agalString += "ddy ft5.ywxy   , fc20.ywxy    \n";
			_agalString += "sgn ft1.ywxz   , fc15.ywxz    \n";
			_agalString += "exp ft6.ywy    ,   v6.ywy     \n";
			_agalString += "nrm ft7.ywyw   , fc27.ywyw    \n";
			_agalString += "sin  oc.ywyx   , fc26.ywyx    \n";
			_agalString += "cos ft0.ywyz   , fc25.ywyz    \n";
			_agalString += "abs ft1.ywz    , fc24.ywz     \n";
			_agalString += "neg ft2.ywzw   , fc23.ywzw    \n";
			_agalString += "sat ft3.ywzx   , fc22.ywzx    \n";
			_agalString += "ddx ft4.ywzy   , fc21.ywzy    \n";
			_agalString += "ddy ft5.yx     , fc20.yx      \n";
			_agalString += "sgn ft1.yxw    , fc15.yxw     \n";
			_agalString += "exp ft6.yxwx   ,   v6.yxwx    \n";
			_agalString += "nrm ft7.yxwy   , fc27.yxwy    \n";
			_agalString += "sin  oc.yxwz   , fc26.yxwz    \n";
			_agalString += "cos ft0.yxxw   , fc25.yxxw    \n";
			_agalString += "abs ft1.yxxy   , fc24.yxxy    \n";
			_agalString += "neg ft2.yxxz   , fc23.yxxz    \n";
			_agalString += "sat ft3.yxy    , fc22.yxy     \n";
			_agalString += "ddx ft4.yxyw   , fc21.yxyw    \n";
			_agalString += "ddy ft5.yxyx   , fc20.yxyx    \n";
			_agalString += "sgn ft1.yxyz   , fc15.yxyz    \n";
			_agalString += "exp ft6.yxz    ,   v6.yxz     \n";
			_agalString += "nrm ft7.yxzw   , fc27.yxzw    \n";
			_agalString += "sin  oc.yxzx   , fc26.yxzx    \n";
			_agalString += "cos ft0.yxzy   , fc25.yxzy    \n";
			_agalString += "abs ft1.yyw    , fc24.yyw     \n";
			_agalString += "neg ft2.yywx   , fc23.yywx    \n";
			_agalString += "sat ft3.yywy   , fc22.yywy    \n";
			_agalString += "ddx ft4.yywz   , fc21.yywz    \n";
			_agalString += "ddy ft5.yyx    , fc20.yyx     \n";
			_agalString += "sgn ft1.yyxw   , fc15.yyxw    \n";
			_agalString += "exp ft6.yyxy   ,   v6.yyxy    \n";
			_agalString += "nrm ft7.yyxz   , fc27.yyxz    \n";
			_agalString += "sin  oc.yyyw   , fc26.yyyw    \n";
			_agalString += "cos ft0.yyyx   , fc25.yyyx    \n";
		}

		override protected function _compile() : void {
			_shader.mov(t0 ^ yz, v0 ^ wz);
			_shader.mov(t0 ^ zy, v0 ^ zw);
			_shader.rcp(t1 ^ xyzw, v1 ^ wyzw);
			_shader.frc(t2 ^ wzxy, v2 ^ xyzw);
			_shader.sqt(t3 ^ x, v3 ^ x);
			_shader.rsq(t4 ^ xxxz, v4 ^ zzzx);
			_shader.log(t5 ^ xyz, v5 ^ xyz);
			_shader.exp(t6 ^ xyyz, v6 ^ xyyz);
			_shader.nrm(t7 ^ xyz, c27 ^ xyz);
			_shader.sin(oc ^ xyzw, c26 ^ xyzw);
			_shader.cos(t0 ^ xyzx, c25 ^ xyzx);
			_shader.abs(t1 ^ xyzy, c24 ^ xyzy);
			_shader.neg(t2 ^ xz, c23 ^ xz);
			_shader.sat(t3 ^ xzw, c22 ^ xzw);
			_shader.ddx(t4 ^ xzwx, c21 ^ xzwx);
			_shader.ddy(t5 ^ xzwy, c20 ^ xzwy);
			_shader.sgn(t1 ^ xzwz, c15 ^ xzwz);
			_shader.exp(t6 ^ xzx, v6 ^ xzx);
			_shader.nrm(t7 ^ xzxw, c27 ^ xzxw);
			_shader.sin(oc ^ xzxy, c26 ^ xzxy);
			_shader.cos(t0 ^ xzxz, c25 ^ xzxz);
			_shader.abs(t1 ^ xzy, c24 ^ xzy);
			_shader.neg(t2 ^ xzyw, c23 ^ xzyw);
			_shader.sat(t3 ^ xzyx, c22 ^ xzyx);
			_shader.ddx(t4 ^ xzyz, c21 ^ xzyz);
			_shader.ddy(t5 ^ xzzw, c20 ^ xzzw);
			_shader.sgn(t1 ^ xzzx, c15 ^ xzzx);
			_shader.exp(t6 ^ xzzy, v6 ^ xzzy);
			_shader.nrm(t7 ^ y, c27 ^ y);
			_shader.sin(oc ^ yw, c26 ^ yw);
			_shader.cos(t0 ^ ywwx, c25 ^ ywwx);
			_shader.abs(t1 ^ ywwy, c24 ^ ywwy);
			_shader.neg(t2 ^ ywwz, c23 ^ ywwz);
			_shader.sat(t3 ^ ywx, c22 ^ ywx);
			_shader.ddx(t4 ^ ywxw, c21 ^ ywxw);
			_shader.ddy(t5 ^ ywxy, c20 ^ ywxy);
			_shader.sgn(t1 ^ ywxz, c15 ^ ywxz);
			_shader.exp(t6 ^ ywy, v6 ^ ywy);
			_shader.nrm(t7 ^ ywyw, c27 ^ ywyw);
			_shader.sin(oc ^ ywyx, c26 ^ ywyx);
			_shader.cos(t0 ^ ywyz, c25 ^ ywyz);
			_shader.abs(t1 ^ ywz, c24 ^ ywz);
			_shader.neg(t2 ^ ywzw, c23 ^ ywzw);
			_shader.sat(t3 ^ ywzx, c22 ^ ywzx);
			_shader.ddx(t4 ^ ywzy, c21 ^ ywzy);
			_shader.ddy(t5 ^ yx, c20 ^ yx);
			_shader.sgn(t1 ^ yxw, c15 ^ yxw);
			_shader.exp(t6 ^ yxwx, v6 ^ yxwx);
			_shader.nrm(t7 ^ yxwy, c27 ^ yxwy);
			_shader.sin(oc ^ yxwz, c26 ^ yxwz);
			_shader.cos(t0 ^ yxxw, c25 ^ yxxw);
			_shader.abs(t1 ^ yxxy, c24 ^ yxxy);
			_shader.neg(t2 ^ yxxz, c23 ^ yxxz);
			_shader.sat(t3 ^ yxy, c22 ^ yxy);
			_shader.ddx(t4 ^ yxyw, c21 ^ yxyw);
			_shader.ddy(t5 ^ yxyx, c20 ^ yxyx);
			_shader.sgn(t1 ^ yxyz, c15 ^ yxyz);
			_shader.exp(t6 ^ yxz, v6 ^ yxz);
			_shader.nrm(t7 ^ yxzw, c27 ^ yxzw);
			_shader.sin(oc ^ yxzx, c26 ^ yxzx);
			_shader.cos(t0 ^ yxzy, c25 ^ yxzy);
			_shader.abs(t1 ^ yyw, c24 ^ yyw);
			_shader.neg(t2 ^ yywx, c23 ^ yywx);
			_shader.sat(t3 ^ yywy, c22 ^ yywy);
			_shader.ddx(t4 ^ yywz, c21 ^ yywz);
			_shader.ddy(t5 ^ yyx, c20 ^ yyx);
			_shader.sgn(t1 ^ yyxw, c15 ^ yyxw);
			_shader.exp(t6 ^ yyxy, v6 ^ yyxy);
			_shader.nrm(t7 ^ yyxz, c27 ^ yyxz);
			_shader.sin(oc ^ yyyw, c26 ^ yyyw);
			_shader.cos(t0 ^ yyyx, c25 ^ yyyx);
		}
	}
}
