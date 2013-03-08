package com.instagal.bench {
	import regs.*;

	import com.adobe.utils.AGALMiniAssembler;
	import com.instagal.Shader;
	import com.instagal.Tex;

	import flash.display.Sprite;
	import flash.display3D.Context3DProgramType;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.utils.ByteArray;
	import flash.utils.getTimer;
	

	/**
	 * @author plepers
	 */
	public class BenchCompiler extends Sprite {
		
		private var tf : TextField;
		
		private var _score : int = 0;
		private var _compileNum : int = 0;
		
		
		private var looptime : int = 2000;
		
		public function BenchCompiler() {
			stage.addEventListener( MouseEvent.CLICK, onClick );

			tf = new TextField();
			tf.autoSize = TextFieldAutoSize.LEFT;
			addChild( tf );
			
			staticInit();
			
CONFIG::mini {	
			tf.appendText( "Bench AgalMiniAssembler (click to start) \n" );
}
CONFIG::insta { 		
			tf.appendText( "Bench Instagal Assembler (click to start) \n" );
}
		}
		private function onClick(event : MouseEvent) : void {
			_compileNum = 0;
			_score = 0;
			
			_runFragmentLoop();
			_runVertexLoop();
			
			tf.appendText( " "+ _compileNum + " compilations in "+ _score + " ms \n" );
		}
		

		private function staticInit() : void {
			// run some loop to don't take in account static initialization time
			var ol : int = looptime;
			looptime = 10;
			_runFragmentLoop();
			_runVertexLoop();
			looptime = ol;
		}
		
		
CONFIG::mini {		
		
		private function _runVertexLoop() : void {
			
			_compileNum += looptime;
			
			var vba : ByteArray;
			
			var st : int, et : int;
			var i : int;
			
			var time : int;
			
			st = getTimer();
			
			for ( i = 0; i < looptime; i++) {
				vba = new AGALMiniAssembler().assemble( Context3DProgramType.VERTEX, V_AGAL );
			}
			
			et = getTimer();
			
			time = (et-st);
			
			
			_score += time;
		}
}

CONFIG::insta {	

		private function _runVertexLoop() : void {
			
			_compileNum += looptime;
			
			var vba : ByteArray;
			
			var st : int, et : int;
			var i : int;
			var shader : Shader;
			
			var time : int;
			
			
			st = getTimer();
			
			for ( i = 0; i < looptime; i++) {
				shader = new Shader( Context3DProgramType.VERTEX );
				shader.mov( t0, 	a0 					);      
				shader.mov( t2, 	a2                  );
				shader.m44( t7, 	t0, 		c0		);
				shader.mul( op, 	t7, 		c4      );
				shader.mov( v0, 	a1                 	);
				shader.m44( t1^xyz, t0, 		c5      );
				shader.mov( t1^w, 	t0^w           		);
				shader.m33( t3^xyz, t2^xyz, 	c9  	);
				shader.mov( t3^w, 	t2^w	           	);
				shader.mov( v1, 	t3					);
				shader.sub( t2, 	c13, 		t1      );
				shader.nrm( t4^xyz,	t2^xyz         		);
				shader.dp3( t1^w, 	t3^xyz, 	t4^xyz 	);
				shader.sub( v2^w, 	c13^w, 		t1^w    );
				shader.add( t1^w, 	t1^w, 		t1^w    );
				shader.mul( t1^xyz, t3^xyz, 	t1^w	);		
				shader.sub( t1^xyz, t1^xyz, 	t4^xyz	);			
				shader.nrm( v2^xyz, t1^xyz				);
				
				vba = shader.release();
			}
			
			et = getTimer();
			
			time = (et-st);
			
			//tf.appendText( "mini  : "+ looptime + " compilations in "+ slow + " ms \n" );
			//tf.appendText( "insta : "+ looptime + " compilations in "+ fast + " ms \n" );
			//tf.appendText( "insta : compile "+ ( slow/fast ).toFixed(2) + " times faster \n" );
			
			_score += time;
		}
}

CONFIG::mini {	

		private function _runFragmentLoop() : void {
			
			_compileNum += looptime;
			
			var vba : ByteArray;
			
			var st : int, et : int;
			var i : int;
			
			var time : int;
			
			st = getTimer();
			
			for ( i = 0; i < looptime; i++) {
				vba = new AGALMiniAssembler().assemble( Context3DProgramType.FRAGMENT, F_AGAL );
			}
			
			et = getTimer();
			
			time = (et-st);
			
		
			_score += time;
			
		}
}
		
CONFIG::insta {			
		private function _runFragmentLoop() : void {
			
			_compileNum += looptime;
			
			var vba : ByteArray;
			
			var st : int, et : int;
			var i : int;
			var shader : Shader;
			
			var time : int;
			
			st = getTimer();
			
			for ( i = 0; i < looptime; i++) {
				shader = new Shader( Context3DProgramType.FRAGMENT );
				shader.mov( t0 	   , c2        );      
				shader.tex( t1 	   , v1       ,s0 | Tex.CUBE | Tex.NEAREST | Tex.CLAMP    );
				shader.div( t1^w   , t1^w     ,c0^z	                      );
				shader.sub( t1^w   , t1^w     ,c3^y	                      );
				shader.pow( t1^w   , c3^x     ,t1^w	                      );
				shader.mul( t1^xyz , t1^xyz   ,t1^w	                      );
				shader.mul( t1^xyz , t1^xyz   ,c3^z	                      );
				shader.mul( t0^xyz , t1^xyz   ,t0^xyz	                  );
				shader.tex( t1     , v2^xyz   ,s1 | Tex.CUBE | Tex.NEAREST | Tex.CLAMP    );
				shader.div( t1^w   , t1^w     ,c0^z	                      );
				shader.sub( t1^w   , t1^w     ,c4^z	                      );
				shader.pow( t1^w   , c4^x     ,t1^w	                      );
				shader.mul( t1^xyz , t1^xyz   ,t1^w	                      );
				shader.pow( t1^w   , v2^w     ,c4^y	                      );
				shader.mul( t1^w   , t1^w     ,c1^w	                      );
				shader.add( t1^w   , t1^w     ,c1^z	                      );		
				shader.mul( t1^xyz , t1^xyz   ,t1^w	                      );			
				shader.add( t0^xyz , t0^xyz   ,t1^xyz				      );
				shader.tex( t1     , v0       ,s2 | Tex.D2 | Tex.NEAREST | Tex.CLAMP | Tex.DXT1  );
				shader.mul( t0^xyz , t0^xyz   ,t1^x                       );
				shader.mul( t0^xyz , t0^xyz   ,c5^x                       );
				shader.pow( t0^xyz , t0^xyz   ,c5^y	                      );
				shader.mov( oc     , t0        );
				
				vba = shader.release();
			}
			
			et = getTimer();
			
			time = (et-st);
			
			_score += time;
		}
}
		
	}

}






const V_AGAL : String =  [
"mov vt0, va0                   ",
"mov vt2, va2                   ",
"m44 vt7, vt0, vc0		        ",
"mul op, vt7, vc4               ",
"mov v0, va1                    ",
"m44 vt1.xyz, vt0, vc5          ",
"mov vt1.w, vt0.w               ",
"m33 vt3.xyz, vt2.xyz, vc9      ",
"mov vt3.w, vt2.w	            ",
"mov v1, vt3	                ",
"sub vt2, vc13, vt1             ",
"nrm vt4.xyz,vt2.xyz            ",
"dp3 vt1.w, vt3.xyz, vt4.xyz    ",
"sub v2.w, vc13.w, vt1.w        ",
"add vt1.w, vt1.w, vt1.w        ",
"mul vt1.xyz, vt3.xyz, vt1.w	",					
"sub vt1.xyz, vt1.xyz, vt4.xyz	",				
"nrm v2.xyz, vt1.xyz			" 
].join( '\n' );

const F_AGAL : String =  [
"mov ft0 	   ,  fc2                                 ",
"tex ft1 	   ,  v1      , fs0 <cube,nearest,clamp>  ",
"div ft1.w     ,  ft1.w   , fc0.z	                  ",
"sub ft1.w     ,  ft1.w   , fc3.y	                  ",
"pow ft1.w     ,  fc3.x   , ft1.w	                  ",
"mul ft1.xyz   ,  ft1.xyz , ft1.w	                  ",
"mul ft1.xyz   ,  ft1.xyz , fc3.z	                  ",
"mul ft0.xyz   ,  ft1.xyz , ft0.xyz	                  ",
"tex ft1       ,  v2.xyz  , fs1 <cube,nearest,clamp>  ",
"div ft1.w     ,  ft1.w   , fc0.z	                   ",
"sub ft1.w     ,  ft1.w   , fc4.z	                   ",
"pow ft1.w     ,  fc4.x   , ft1.w	                       ",
"mul ft1.xyz   ,  ft1.xyz , ft1.w	                    ",
"pow ft1.w     ,  v2.w    , fc4.y	                       ",
"mul ft1.w     ,  ft1.w   , fc1.w	                   ",
"add ft1.w     ,  ft1.w   , fc1.z	                   ",
"mul ft1.xyz   ,  ft1.xyz , ft1.w	                   ",
"add ft0.xyz   ,  ft0.xyz , ft1.xyz				       ",			
"tex ft1       ,  v0      , fs2 <2d,nearest,clamp,dxt1>   ",
"mul ft0.xyz   ,  ft0.xyz , ft1.x                        ",
"mul ft0.xyz   ,  ft0.xyz , fc5.x                        ",
"pow ft0.xyz   ,  ft0.xyz , fc5.y	                    ",
"mov oc        ,  ft0                                        "
].join( '\n' );