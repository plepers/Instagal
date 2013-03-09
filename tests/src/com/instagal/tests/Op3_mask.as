package com.instagal.tests {
	import regs.*;

	import flash.display3D.Context3DProgramType;

	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.tests.Op3_nomask
	 */
	public class Op3_mask extends CompareTest {

		public function Op3_mask() {
			super();
			
			_agalType = Context3DProgramType.FRAGMENT;
			
			
			_agalString = 	"add ft0.wwwx ,   v0.wwwx , fc27.wwwx   \n";		
			_agalString += 	"sub ft1.wwwy ,   v1.wwwy , fc26.wwwy   \n";		
			_agalString += 	"mul ft2.wwwz ,   v2.wwwz , fc25.wwwz   \n";
			_agalString += 	"div ft3.wwx  ,   v3.wwx  , fc24.wwx    \n";
			_agalString += 	"min ft4.wwxw ,   v4.wwxw , fc23.wwxw   \n";
			_agalString += 	"max ft5.wwxy ,   v5.wwxy , fc22.wwxy   \n";
			_agalString += 	"pow ft6.wwxz ,   v6.wwxz , fc21.wwxz   \n";
			_agalString += 	"crs ft7.wzyx , fc27.wzyx , fc20.wzyx   \n";
			_agalString += 	"dp3  oc.wzyz , fc26.wzyz , fc19.wzyz   \n";
			_agalString += 	"dp4 ft0.wzzw , fc25.wzzw , fc18.wzzw   \n";
			_agalString += 	"m33 ft1.wzzx , fc24.wzzx , fc17.wzzx   \n";
			_agalString += 	"m44 ft2.wzzy , fc23.wzzy , fc16.wzzy   \n";
			_agalString += 	"m34 ft3.x	  , fc22.x	  , fc15.x	    \n";
			_agalString += 	"sge ft6.xw   , fc19.xw   ,   v2.xw     \n";
			_agalString += 	"slt ft7.xwwx , fc18.xwwx ,   v3.xwwx   \n";
			_agalString += 	"seq  oc.xwwy , fc17.xwwy ,   v4.xwwy   \n";
			_agalString += 	"sne ft0.xwwz , fc16.xwwz ,   v5.xwwz   \n";
			_agalString += 	"sub ft1.xwx  ,   v1.xwx  , fc26.xwx    \n";		
			_agalString += 	"mul ft2.xwxw ,   v2.xwxw , fc25.xwxw   \n";
			_agalString += 	"div ft3.xwxy ,   v3.xwxy , fc24.xwxy   \n";
			_agalString += 	"min ft4.xwxz ,   v4.xwxz , fc23.xwxz   \n";
			_agalString += 	"max ft5.xwy  ,   v5.xwy  , fc22.xwy    \n";
			_agalString += 	"pow ft6.xzxy ,   v6.xzxy , fc21.xzxy   \n";
			_agalString += 	"crs ft7.xzxz , fc27.xzxz , fc20.xzxz   \n";
			_agalString += 	"dp3  oc.xzy  , fc26.xzy  , fc19.xzy    \n";
			_agalString += 	"dp4 ft0.xzyw , fc25.xzyw , fc18.xzyw   \n";
			_agalString += 	"m33 ft1.xzyx , fc24.xzyx , fc17.xzyx   \n";
			_agalString += 	"m44 ft2.xzyz , fc23.xzyz , fc16.xzyz   \n";
			_agalString += 	"m34 ft3.xzzw , fc22.xzzw , fc15.xzzw   \n";
			_agalString += 	"sge ft6.xzzx , fc19.xzzx ,   v2.xzzx   \n";
			_agalString += 	"slt ft7.xzzy , fc18.xzzy ,   v3.xzzy   \n";
			_agalString += 	"seq  oc.y    , fc17.y    ,   v4.y      \n";
			_agalString += 	"sne ft0.yw   , fc16.yw   ,   v5.yw     \n";
			_agalString += 	"sub ft1.ywwx ,   v1.ywwx , fc26.ywwx   \n";		
			_agalString += 	"mul ft2.ywwy ,   v2.ywwy , fc25.ywwy   \n";
			_agalString += 	"div ft3.ywwz ,   v3.ywwz , fc24.ywwz   \n";
			_agalString += 	"min ft4.ywx  ,   v4.ywx  , fc23.ywx    \n";
			_agalString += 	"max ft5.ywxw ,   v5.ywxw , fc22.ywxw   \n";
			_agalString += 	"pow ft6.ywxy ,   v6.ywxy , fc21.ywxy   \n";
			_agalString += 	"crs ft7.ywxz , fc27.ywxz , fc20.ywxz   \n";
			_agalString += 	"dp3  oc.ywy  , fc26.ywy  , fc19.ywy    \n";
			_agalString += 	"dp4 ft0.ywyw , fc25.ywyw , fc18.ywyw   \n";
			_agalString += 	"m33 ft1.ywyx , fc24.ywyx , fc17.ywyx   \n";
			_agalString += 	"m44 ft2.yyxz , fc23.yyxz , fc16.yyxz   \n";
			_agalString += 	"m34 ft3.yyyx , fc22.yyyx , fc15.yyyx   \n";
			_agalString += 	"sge ft6.yyz  , fc19.yyz  ,   v2.yyz    \n";
			_agalString += 	"slt ft7.yyzx , fc18.yyzx ,   v3.yyzx   \n";
			_agalString += 	"seq  oc.yzwx , fc17.yzwx ,   v4.yzwx   \n";
			_agalString += 	"sne ft0.yzxw , fc16.yzxw ,   v5.yzxw   \n";
			_agalString += 	"sub ft1.yzyw ,   v1.yzyw , fc26.yzyw   \n";		
			_agalString += 	"mul ft2.yzyx ,   v2.yzyx , fc25.yzyx   \n";
			_agalString += 	"div ft3.yzyz ,   v3.yzyz , fc24.yzyz   \n";
			_agalString += 	"min ft4.yzzw ,   v4.yzzw , fc23.yzzw   \n";
			_agalString += 	"max ft5.yzzx ,   v5.yzzx , fc22.yzzx   \n";
			_agalString += 	"pow ft6.yzzy ,   v6.yzzy , fc21.yzzy   \n";
			_agalString += 	"crs ft7.z    , fc27.z    , fc20.z      \n";
			_agalString += 	"dp3  oc.zw   , fc26.zw   , fc19.zw     \n";
			_agalString += 	"dp4 ft0.zwwx , fc25.zwwx , fc18.zwwx   \n";
			_agalString += 	"m33 ft1.zwwy , fc24.zwwy , fc17.zwwy   \n";
			_agalString += 	"m44 ft2.zwwz , fc23.zwwz , fc16.zwwz   \n";
			_agalString += 	"m34 ft3.zwx  , fc22.zwx  , fc15.zwx    \n";
			_agalString += 	"sge ft6.zwxw , fc19.zwxw ,   v2.zwxw   \n";
			_agalString += 	"slt ft7.zwxy , fc18.zwxy ,   v3.zwxy   \n";
			_agalString += 	"seq  oc.zwxz , fc17.zwxz ,   v4.zwxz   \n";
			_agalString += 	"sne ft0.zwy  , fc16.zwy  ,   v5.zwy    \n";
			_agalString += 	"sub ft1.zwyw ,   v1.zwyw , fc26.zwyw   \n";		
			_agalString += 	"mul ft2.zwzw ,   v2.zwzw , fc25.zwzw   \n";
			_agalString += 	"div ft3.zx   ,   v3.zx   , fc24.zx     \n";
			_agalString += 	"min ft4.zxwx ,   v4.zxwx , fc23.zxwx   \n";
			_agalString += 	"max ft5.zxwy ,   v5.zxwy , fc22.zxwy   \n";
			_agalString += 	"pow ft6.zxy  ,   v6.zxy  , fc21.zxy    \n";
			_agalString += 	"crs ft7.zxyw , fc27.zxyw , fc20.zxyw   \n";
			_agalString += 	"dp3  oc.zxyz , fc26.zxyz , fc19.zxyz   \n";
			_agalString += 	"dp4 ft0.zxzx , fc25.zxzx , fc18.zxzx   \n";
			_agalString += 	"m33 ft1.zxzy , fc24.zxzy , fc17.zxzy   \n";
			_agalString += 	"m44 ft2.zy   , fc23.zy   , fc16.zy     \n";
			_agalString += 	"m34 ft3.zyx  , fc22.zyx  , fc15.zyx    \n";
			_agalString += 	"sge ft6.zyxz , fc19.zyxz ,   v2.zyxz   \n";
			_agalString += 	"slt ft7.zyz  , fc18.zyz  ,   v3.zyz    \n";
			_agalString += 	"seq  oc.zzw  , fc17.zzw  ,   v4.zzw    \n";
			_agalString += 	"sne ft0.zzxy , fc16.zzxy ,   v5.zzxy   \n";
			_agalString += 	"div ft1.w     ,  ft1.w   , fc0.z \n";
			_agalString += 	"sub ft1.w     ,  ft1.w   , fc3.y \n";

		}

		
		override protected function _compile() : void {
			_shader.add(  t0 ^ wwwx ,   v0 ^ wwwx ,  c27 ^ wwwx  );
			_shader.sub(  t1 ^ wwwy ,   v1 ^ wwwy ,  c26 ^ wwwy  );
			_shader.mul(  t2 ^ wwwz ,   v2 ^ wwwz ,  c25 ^ wwwz  );
			_shader.div(  t3 ^ wwx  ,   v3 ^ wwx  ,  c24 ^ wwx   );
			_shader.min(  t4 ^ wwxw ,   v4 ^ wwxw ,  c23 ^ wwxw  );
			_shader.max(  t5 ^ wwxy ,   v5 ^ wwxy ,  c22 ^ wwxy  );
			_shader.pow(  t6 ^ wwxz ,   v6 ^ wwxz ,  c21 ^ wwxz  );
			_shader.crs(  t7 ^ wzyx ,  c27 ^ wzyx ,  c20 ^ wzyx  );
			_shader.dp3(  oc ^ wzyz ,  c26 ^ wzyz ,  c19 ^ wzyz  );
			_shader.dp4(  t0 ^ wzzw ,  c25 ^ wzzw ,  c18 ^ wzzw  );
			_shader.m33(  t1 ^ wzzx ,  c24 ^ wzzx ,  c17 ^ wzzx  );
			_shader.m44(  t2 ^ wzzy ,  c23 ^ wzzy ,  c16 ^ wzzy  );
			_shader.m34(  t3 ^ x    ,  c22 ^ x	  ,  c15 ^ x	   );
			_shader.sge(  t6 ^ xw   ,  c19 ^ xw   ,   v2 ^ xw    );
			_shader.slt(  t7 ^ xwwx ,  c18 ^ xwwx ,   v3 ^ xwwx  );
			_shader.seq(  oc ^ xwwy ,  c17 ^ xwwy ,   v4 ^ xwwy  );
			_shader.sne(  t0 ^ xwwz ,  c16 ^ xwwz ,   v5 ^ xwwz  );
			_shader.sub(  t1 ^ xwx  ,   v1 ^ xwx  ,  c26 ^ xwx   );
			_shader.mul(  t2 ^ xwxw ,   v2 ^ xwxw ,  c25 ^ xwxw  );
			_shader.div(  t3 ^ xwxy ,   v3 ^ xwxy ,  c24 ^ xwxy  );
			_shader.min(  t4 ^ xwxz ,   v4 ^ xwxz ,  c23 ^ xwxz  );
			_shader.max(  t5 ^ xwy  ,   v5 ^ xwy  ,  c22 ^ xwy   );
			_shader.pow(  t6 ^ xzxy ,   v6 ^ xzxy ,  c21 ^ xzxy  );
			_shader.crs(  t7 ^ xzxz ,  c27 ^ xzxz ,  c20 ^ xzxz  );
			_shader.dp3(  oc ^ xzy  ,  c26 ^ xzy  ,  c19 ^ xzy   );
			_shader.dp4(  t0 ^ xzyw ,  c25 ^ xzyw ,  c18 ^ xzyw  );
			_shader.m33(  t1 ^ xzyx ,  c24 ^ xzyx ,  c17 ^ xzyx  );
			_shader.m44(  t2 ^ xzyz ,  c23 ^ xzyz ,  c16 ^ xzyz  );
			_shader.m34(  t3 ^ xzzw ,  c22 ^ xzzw ,  c15 ^ xzzw  );
			_shader.sge(  t6 ^ xzzx ,  c19 ^ xzzx ,   v2 ^ xzzx  );
			_shader.slt(  t7 ^ xzzy ,  c18 ^ xzzy ,   v3 ^ xzzy  );
			_shader.seq(  oc ^ y    ,  c17 ^ y    ,   v4 ^ y     );
			_shader.sne(  t0 ^ yw   ,  c16 ^ yw   ,   v5 ^ yw    );
			_shader.sub(  t1 ^ ywwx ,   v1 ^ ywwx ,  c26 ^ ywwx  );
			_shader.mul(  t2 ^ ywwy ,   v2 ^ ywwy ,  c25 ^ ywwy  );
			_shader.div(  t3 ^ ywwz ,   v3 ^ ywwz ,  c24 ^ ywwz  );
			_shader.min(  t4 ^ ywx  ,   v4 ^ ywx  ,  c23 ^ ywx   );
			_shader.max(  t5 ^ ywxw ,   v5 ^ ywxw ,  c22 ^ ywxw  );
			_shader.pow(  t6 ^ ywxy ,   v6 ^ ywxy ,  c21 ^ ywxy  );
			_shader.crs(  t7 ^ ywxz ,  c27 ^ ywxz ,  c20 ^ ywxz  );
			_shader.dp3(  oc ^ ywy  ,  c26 ^ ywy  ,  c19 ^ ywy   );
			_shader.dp4(  t0 ^ ywyw ,  c25 ^ ywyw ,  c18 ^ ywyw  );
			_shader.m33(  t1 ^ ywyx ,  c24 ^ ywyx ,  c17 ^ ywyx  );
			_shader.m44(  t2 ^ yyxz ,  c23 ^ yyxz ,  c16 ^ yyxz  );
			_shader.m34(  t3 ^ yyyx ,  c22 ^ yyyx ,  c15 ^ yyyx  );
			_shader.sge(  t6 ^ yyz  ,  c19 ^ yyz  ,   v2 ^ yyz   );
			_shader.slt(  t7 ^ yyzx ,  c18 ^ yyzx ,   v3 ^ yyzx  );
			_shader.seq(  oc ^ yzwx ,  c17 ^ yzwx ,   v4 ^ yzwx  );
			_shader.sne(  t0 ^ yzxw ,  c16 ^ yzxw ,   v5 ^ yzxw  );
			_shader.sub(  t1 ^ yzyw ,   v1 ^ yzyw ,  c26 ^ yzyw  );
			_shader.mul(  t2 ^ yzyx ,   v2 ^ yzyx ,  c25 ^ yzyx  );
			_shader.div(  t3 ^ yzyz ,   v3 ^ yzyz ,  c24 ^ yzyz  );
			_shader.min(  t4 ^ yzzw ,   v4 ^ yzzw ,  c23 ^ yzzw  );
			_shader.max(  t5 ^ yzzx ,   v5 ^ yzzx ,  c22 ^ yzzx  );
			_shader.pow(  t6 ^ yzzy ,   v6 ^ yzzy ,  c21 ^ yzzy  );
			_shader.crs(  t7 ^ z    ,  c27 ^ z    ,  c20 ^ z     );
			_shader.dp3(  oc ^ zw   ,  c26 ^ zw   ,  c19 ^ zw    );
			_shader.dp4(  t0 ^ zwwx ,  c25 ^ zwwx ,  c18 ^ zwwx  );
			_shader.m33(  t1 ^ zwwy ,  c24 ^ zwwy ,  c17 ^ zwwy  );
			_shader.m44(  t2 ^ zwwz ,  c23 ^ zwwz ,  c16 ^ zwwz  );
			_shader.m34(  t3 ^ zwx  ,  c22 ^ zwx  ,  c15 ^ zwx   );
			_shader.sge(  t6 ^ zwxw ,  c19 ^ zwxw ,   v2 ^ zwxw  );
			_shader.slt(  t7 ^ zwxy ,  c18 ^ zwxy ,   v3 ^ zwxy  );
			_shader.seq(  oc ^ zwxz ,  c17 ^ zwxz ,   v4 ^ zwxz  );
			_shader.sne(  t0 ^ zwy  ,  c16 ^ zwy  ,   v5 ^ zwy   );
			_shader.sub(  t1 ^ zwyw ,   v1 ^ zwyw ,  c26 ^ zwyw  );
			_shader.mul(  t2 ^ zwzw ,   v2 ^ zwzw ,  c25 ^ zwzw  );
			_shader.div(  t3 ^ zx   ,   v3 ^ zx   ,  c24 ^ zx    );
			_shader.min(  t4 ^ zxwx ,   v4 ^ zxwx ,  c23 ^ zxwx  );
			_shader.max(  t5 ^ zxwy ,   v5 ^ zxwy ,  c22 ^ zxwy  );
			_shader.pow(  t6 ^ zxy  ,   v6 ^ zxy  ,  c21 ^ zxy   );
			_shader.crs(  t7 ^ zxyw ,  c27 ^ zxyw ,  c20 ^ zxyw  );
			_shader.dp3(  oc ^ zxyz ,  c26 ^ zxyz ,  c19 ^ zxyz  );
			_shader.dp4(  t0 ^ zxzx ,  c25 ^ zxzx ,  c18 ^ zxzx  );
			_shader.m33(  t1 ^ zxzy ,  c24 ^ zxzy ,  c17 ^ zxzy  );
			_shader.m44(  t2 ^ zy   ,  c23 ^ zy   ,  c16 ^ zy    );
			_shader.m34(  t3 ^ zyx  ,  c22 ^ zyx  ,  c15 ^ zyx   );
			_shader.sge(  t6 ^ zyxz ,  c19 ^ zyxz ,   v2 ^ zyxz  );
			_shader.slt(  t7 ^ zyz  ,  c18 ^ zyz  ,   v3 ^ zyz   );
			_shader.seq(  oc ^ zzw  ,  c17 ^ zzw  ,   v4 ^ zzw   );
			_shader.sne(  t0 ^ zzxy ,  c16 ^ zzxy ,   v5 ^ zzxy  );
			_shader.div( t1^w   , t1^w     ,c0^z	                      );
			_shader.sub( t1^w   , t1^w     ,c3^y	                      );

		}
	}
}