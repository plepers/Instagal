package com.instagal.tests {

	import com.adobe.utils.AGALMiniAssembler;
	import com.instagal.Dump;
	import com.instagal.Shader;
	import com.instagal.regs.*;

	import flash.display3D.Context3DProgramType;
	import flash.utils.ByteArray;

	/**
	 * @author Pierre Lepers
	 * com.instagal.tests.DumpVertexTest
	 */
	public class DumpVertexTest extends BaseTest {

		private var _shader : Shader;

		override protected function _run() : Boolean {
			
			_shader = new Shader( Context3DProgramType.VERTEX, 1 );
			
			_shader.mov(t0, c(t0 ^ x) + 0 ^ wz);                 //  mov	vt0         , vc[vt0.x].wz                   
			_shader.mov(t1, c(t1 ^ y) + 1 ^ zw);                 //  mov	vt1         , vc[vt1.y+1].zw                 
			_shader.mov(t0, c(t0 ^ x) ^ wz);                     //  mov	vt0         , vc[vt0.x].wz                   
			_shader.mov(t1, c(t1 ^ y) ^ zw);                     //  mov	vt1         , vc[vt1.y].zw                   
			_shader.mov(t0, c(t0 ^ x));                          //  mov	vt0         , vc[vt0.x]  
			_shader.mov(t1, c(t1 ^ y));                          //  mov	vt1         , vc[vt1.y]  
			_shader.crs(t7, c(t0 ^ x), c(a7 ^ w));               //  crs	vt7         , vc[vt0.x]   , vc[va7.w]
			_shader.dp3(oc, c(t1 ^ y), c(c0 ^ x));               //  dp3	op0         , vc[vt1.y]   , vc[vc0.x]
			_shader.mov(t0 ^ yz, v0 ^ wz);                       //  mov	vt0.yz      , v0.wz      
			_shader.mov(t0 ^ zy, v0 ^ zw);                       //  mov	vt0.yz      , v0.zw      
			_shader.rcp(t1 ^ xyzw, v1 ^ wyzw);                   //  rcp	vt1         , v1.wyzw    
			_shader.frc(t2 ^ wzxy, v2 ^ xyzw);                   //  frc	vt2         , v2         
			_shader.sqt(t3 ^ x, v3 ^ x);                         //  sqt	vt3.w       , v3.x       
			_shader.rsq(t4 ^ xxxz, v4 ^ zzzx);                   //  rsq	vt4.yw      , v4.zzzx    
			_shader.mov(t0, v0);                                 //  mov	vt0         , v0         
			_shader.rcp(t1, v1);                                 //  rcp	vt1         , v1         
			_shader.frc(t2, v2);                                 //  frc	vt2         , v2         
			_shader.sqt(t3, v3);                                 //  sqt	vt3         , v3         
			_shader.rsq(t4, v4);                                 //  rsq	vt4         , v4         
			_shader.log(t5, v5);                                 //  log	vt5         , v5         
			_shader.exp(t6, v6);                                 //  exp	vt6         , v6         
			_shader.dp4(t0 ^ wzzw, c25 ^ wzzw, c18 ^ wzzw);      //  dp4	vt0.xy      , vc25.wzzw   , vc18.wzzw
			_shader.m33(t1 ^ wzzx, c24 ^ wzzx, c17 ^ wzzx);      //  m33	vt1.xyw     , vc24.wzzx   , vc17.wzzx
			_shader.m44(t2 ^ wzzy, c23 ^ wzzy, c16 ^ wzzy);      //  m44	vt2.xyz     , vc23.wzzy   , vc16.wzzy
			_shader.m34(t3 ^ x, c22 ^ x, c15 ^ x);               //  m34	vt3.w       , vc22.x      , vc15.x
			_shader.sge(t6 ^ xw, c19 ^ xw, v2 ^ xw);             //  sge	vt6.xw      , vc19.xw     , v2.xw
			_shader.slt(t7 ^ xwwx, c18 ^ xwwx, v3 ^ xwwx);       //  slt	vt7.xw      , vc18.xwwx   , v3.xwwx
			_shader.seq(oc ^ xwwy, c17 ^ xwwy, v4 ^ xwwy);       //  seq	op0.xzw     , vc17.xwwy   , v4.xwwy
			_shader.sne(t0 ^ xwwz, c16 ^ xwwz, v5 ^ xwwz);       //  sne	vt0.xyw     , vc16.xwwz   , v5.xwwz
			_shader.sub(t1 ^ xwx, v1 ^ xwx, c26 ^ xwx);          //  sub	vt1.xw      , v1.xwx      , vc26.xwx
			_shader.mul(t2 ^ xwxw, v2 ^ xwxw, c25 ^ xwxw);       //  mul	vt2.xw      , v2.xwxw     , vc25.xwxw
			_shader.div(t3 ^ xwxy, v3 ^ xwxy, c24 ^ xwxy);       //  div	vt3.xzw     , v3.xwxy     , vc24.xwxy
			_shader.min(t4 ^ xwxz, v4 ^ xwxz, c23 ^ xwxz);       //  min	vt4.xyw     , v4.xwxz     , vc23.xwxz
			_shader.max(t5 ^ xwy, v5 ^ xwy, c22 ^ xwy);          //  max	vt5.xzw     , v5.xwy      , vc22.xwy
			_shader.add(t0, v0, c27);                            //  add	vt0         , v0          , vc27
			_shader.sub(t1, v1, c26);                            //  sub	vt1         , v1          , vc26
			_shader.mul(t2, v2, c25);                            //  mul	vt2         , v2          , vc25
			_shader.div(t3, v3, c24);                            //  div	vt3         , v3          , vc24
			_shader.min(t4, v4, c23);                            //  min	vt4         , v4          , vc23
			_shader.max(t5, v5, c22);                            //  max	vt5         , v5          , vc22
			_shader.pow(t6, v6, c21);                            //  pow	vt6         , v6          , vc21
			_shader.crs(t7, c27, c20);                           //  crs	vt7         , vc27        , vc20
			
			var agalString :  String = Dump.dumpShader(_shader ); 
			
			trace( "com.instagal.tests.DumpVertexTest - _run -- \n",agalString );
			
			var asm : AGALMiniAssembler = new AGALMiniAssembler(true);
			
			var amaBytes : ByteArray = asm.assemble(Context3DProgramType.VERTEX, agalString, 1 );
			var agal : ByteArray = _shader.complete();
			
			return Utils.compareBytes( amaBytes, agal );
			
		}
	}
}
