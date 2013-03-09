package com.instagal.tests {
	import regs.*;

	import com.instagal.Tex;

	import flash.display3D.Context3DProgramType;
	/**
	 * @author plepers
	 */
	public class DIrectOffseting extends CompareTest {
		
		public function DIrectOffseting() {
			super();

			_agalType = Context3DProgramType.FRAGMENT;

			_agalString =  "mov ft0 	   ,  fc2               \n";
			_agalString += "tex ft1 	   ,  v1     , fs0 <cube,nearest,clamp>               \n";
			_agalString += "div ft1.w     ,  ft1.w   , fc0.z               \n";
			_agalString += "sub ft1.w     ,  ft1.w   , fc3.y               \n";
			_agalString += "pow ft1.w     ,  fc3.x   , ft1.w               \n";
			_agalString += "mul ft1.xyz   ,  ft1.xyz , ft1.w               \n";
			_agalString += "mul ft1.xyz   ,  ft1.xyz , fc3.z               \n";
			_agalString += "mul ft0.xyz   ,  ft1.xyz , ft0.xyz	               \n";
			_agalString += "tex ft1       ,  v2.xyz  , fs1 <cube,nearest,clamp>              \n";
			_agalString += "div ft1.w     ,  ft1.w   , fc0.z               \n";
			_agalString += "sub ft1.w     ,  ft1.w   , fc4.z               \n";
			_agalString += "pow ft1.w     ,  fc4.x   , ft1.w               \n";
			_agalString += "mul ft1.xyz   ,  ft1.xyz , ft1.w               \n";
			_agalString += "div ft27.w    ,  ft1.w   , fc0.z               \n";
			_agalString += "sub ft27.w    ,  ft1.w   , fc4.z               \n";
			_agalString += "div ft27.w    ,  ft1.w   , fc0.z               \n";
			_agalString += "sub ft27.w    ,  ft1.w   , fc4.z               \n";
			_agalString += "pow ft27.w    ,  fc4.x   , ft1.w               \n";
			_agalString += "mul ft27.xyz  ,  ft1.xyz , ft1.w               \n";
			_agalString += "pow ft1.w     ,  v2.w    , fc4.y               \n";
			_agalString += "mul ft1.w     ,  ft1.w   , fc1.w               \n";
			_agalString += "add ft1.w     ,  ft1.w   , fc1.z               \n";
			_agalString += "mul ft1.xyz   ,  ft1.xyz , ft1.w               \n";
			_agalString += "add ft0.xyz   ,  ft0.xyz , ft1.xyz			               \n";
			_agalString += "tex ft1       ,  v0      , fs2 <2d,nearest,clamp,dxt1>          \n";
			_agalString += "mul ft0.xyz   ,  ft0.xyz , ft1.x               \n";
			_agalString += "mul ft0.xyz   ,  ft0.xyz , fc5.x               \n";
			_agalString += "pow ft0.xyz   ,  ft0.xyz , fc5.y               \n";
			_agalString += "mov oc        ,  ft0               \n";
		}

		override protected function _compile() : void {
			_shader.mov( t5-5 	  , c0+2        );      
			_shader.tex( t0+1 	  , v1       ,s0 | Tex.CUBE | Tex.NEAREST | Tex.CLAMP    );
			_shader.div( t0^(w+1)  , t1^w     ,c0^z	                      );
			_shader.sub( (t0^w)+1  , t1^w     ,c0+3^y	                      );
			_shader.pow( t0^w+1  , c3^x     ,t0+1^w	                      );
			_shader.mul( t0+(1^xyz) , t1^xyz   ,t0+1^w	                      );
			_shader.mul( t0+1^xyz , t1^xyz   ,c3^z	                      );
			_shader.mul( t7-7^xyz , t1^xyz   ,t0^xyz	                  );
			_shader.tex( t0+1     , v0+2^xyz ,s0+1 | Tex.CUBE | Tex.NEAREST | Tex.CLAMP    );
			_shader.div( 1^(w+t0) , t1^w     ,c0^z	                      );
			_shader.sub( (1^w)+t0 , t1^w     ,c0+4^z	                      );
			_shader.pow( 1^w+t0   , c0+4^x   ,t0+1^w	                      );
			_shader.mul( 1^xyz+t0 , t0+1^xyz ,t0+1^w	                      );
			_shader.div( 27^(w+t0), t1^w     ,c0^z	                      );
			_shader.sub( (27^w)+t0, t1^w     ,c0+4^z	                      );
			_shader.div( 27^w+t0, t1^w     ,c0^z	                      );
			_shader.sub( 27^w+t0, t1^w     ,c0+4^z	                      );
			_shader.pow( 27^w+t0  , c0+4^x   ,t0+1^w	                      );
			_shader.mul( 27^xyz+t0, t0+1^xyz ,t0+1^w	                      );
			_shader.pow( t0+1^w   , v0+2^w   ,c0+4^y	                      );
			_shader.mul( t0+1^w   , t0+1^w   ,c0+1^w	                      );
			_shader.add( t0+1^w   , t0+1^w   ,c0+1^z	                      );		
			_shader.mul( t0+1^xyz , t0+1^xyz ,t0+1^w	                      );			
			_shader.add( t0^xyz   , t0^xyz   ,t0+1^xyz				      );
			_shader.tex( t0+1     , v0       ,s0+2 | Tex.D2 | Tex.NEAREST | Tex.CLAMP | Tex.DXT1  );
			_shader.mul( t2-2^xyz , t2-2^xyz ,t1^x                       );
			_shader.mul( t2-2^xyz , t2-2^xyz ,c0+5^x                       );
			_shader.pow( t2-2^xyz , t2-2^xyz ,c0+5^y	                      );
			_shader.mov( oc       , t7-7        );
		}
	}
}
