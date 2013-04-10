package com.instagal.tests {

	import com.instagal.dump.Stringifyer;
	import com.adobe.utils.AGALMiniAssembler;
	import com.instagal.Shader;
	import com.instagal.dump.Dump;
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
			
			with( _shader ) {
				mov(t0, c(t0 ^ x) + 0 ^ wz);                 //  mov	vt0         , vc[vt0.x].wz                   
				mov(t1, c(t1 ^ y) + 1 ^ zw);                 //  mov	vt1         , vc[vt1.y+1].zw                 
				mov(t0, c(t0 ^ x) ^ wz);                     //  mov	vt0         , vc[vt0.x].wz                   
				mov(t1, c(t1 ^ y) ^ zw);                     //  mov	vt1         , vc[vt1.y].zw                   
				mov(t0, c(t0 ^ x));                          //  mov	vt0         , vc[vt0.x]  
				mov(t1, c(t1 ^ y));                          //  mov	vt1         , vc[vt1.y]  
				crs(t7, c(t0 ^ x), c(a7 ^ w));               //  crs	vt7         , vc[vt0.x]   , vc[va7.w]
				dp3(oc, c(t1 ^ y), c(c0 ^ x));               //  dp3	op0         , vc[vt1.y]   , vc[vc0.x]
				mov(t0 ^ yz, v0 ^ wz);                       //  mov	vt0.yz      , v0.wz      
				mov(t0 ^ zy, v0 ^ zw);                       //  mov	vt0.yz      , v0.zw      
				rcp(t1 ^ xyzw, v1 ^ wyzw);                   //  rcp	vt1         , v1.wyzw    
				frc(t2 ^ wzxy, v2 ^ xyzw);                   //  frc	vt2         , v2         
				sqt(t3 ^ x, v3 ^ x);                         //  sqt	vt3.w       , v3.x       
				rsq(t4 ^ xxxz, v4 ^ zzzx);                   //  rsq	vt4.yw      , v4.zzzx    
				mov(t0, v0);                                 //  mov	vt0         , v0         
				rcp(t1, v1);                                 //  rcp	vt1         , v1         
				frc(t2, v2);                                 //  frc	vt2         , v2         
				sqt(t3, v3);                                 //  sqt	vt3         , v3         
				rsq(t4, v4);                                 //  rsq	vt4         , v4         
				log(t5, v5);                                 //  log	vt5         , v5         
				exp(t6, v6);                                 //  exp	vt6         , v6         
				dp4(t0 ^ wzzw, c25 ^ wzzw, c18 ^ wzzw);      //  dp4	vt0.xy      , vc25.wzzw   , vc18.wzzw
				m33(t1 ^ wzzx, c24 ^ wzzx, c17 ^ wzzx);      //  m33	vt1.xyw     , vc24.wzzx   , vc17.wzzx
				m44(t2 ^ wzzy, c23 ^ wzzy, c16 ^ wzzy);      //  m44	vt2.xyz     , vc23.wzzy   , vc16.wzzy
				m34(t3 ^ x, c22 ^ x, c15 ^ x);               //  m34	vt3.w       , vc22.x      , vc15.x
				sge(t6 ^ xw, c19 ^ xw, v2 ^ xw);             //  sge	vt6.xw      , vc19.xw     , v2.xw
				slt(t7 ^ xwwx, c18 ^ xwwx, v3 ^ xwwx);       //  slt	vt7.xw      , vc18.xwwx   , v3.xwwx
				seq(oc ^ xwwy, c17 ^ xwwy, v4 ^ xwwy);       //  seq	op0.xzw     , vc17.xwwy   , v4.xwwy
				sne(t0 ^ xwwz, c16 ^ xwwz, v5 ^ xwwz);       //  sne	vt0.xyw     , vc16.xwwz   , v5.xwwz
				sub(t1 ^ xwx, v1 ^ xwx, c26 ^ xwx);          //  sub	vt1.xw      , v1.xwx      , vc26.xwx
				mul(t2 ^ xwxw, v2 ^ xwxw, c25 ^ xwxw);       //  mul	vt2.xw      , v2.xwxw     , vc25.xwxw
				div(t3 ^ xwxy, v3 ^ xwxy, c24 ^ xwxy);       //  div	vt3.xzw     , v3.xwxy     , vc24.xwxy
				min(t4 ^ xwxz, v4 ^ xwxz, c23 ^ xwxz);       //  min	vt4.xyw     , v4.xwxz     , vc23.xwxz
				max(t5 ^ xwy, v5 ^ xwy, c22 ^ xwy);          //  max	vt5.xzw     , v5.xwy      , vc22.xwy
				add(t0, v0, c27);                            //  add	vt0         , v0          , vc27
				sub(t1, v1, c26);                            //  sub	vt1         , v1          , vc26
				mul(t2, v2, c25);                            //  mul	vt2         , v2          , vc25
				div(t3, v3, c24);                            //  div	vt3         , v3          , vc24
				min(t4, v4, c23);                            //  min	vt4         , v4          , vc23
				max(t5, v5, c22);                            //  max	vt5         , v5          , vc22
				pow(t6, v6, c21);                            //  pow	vt6         , v6          , vc21
				crs(t7, c27, c20);                           //  crs	vt7         , vc27        , vc20
			}
			
			var agalString :  String = Stringifyer.toAgal( Dump.dumpShader(_shader ) ); 
			
			trace( "com.instagal.tests.DumpVertexTest - _run -- " );
			trace( agalString );
			trace( "com.instagal.tests.DumpVertexTest - instagal -- " );
			trace( Stringifyer.toInstagal( Dump.dumpShader(_shader ) ) );
			
			var asm : AGALMiniAssembler = new AGALMiniAssembler(false);
			
			var amaBytes : ByteArray = asm.assemble(Context3DProgramType.VERTEX, agalString, 1 );
			var agal : ByteArray = _shader.complete();
			
			return Utils.compareBytes( amaBytes, agal );
			
		}
	}
}
