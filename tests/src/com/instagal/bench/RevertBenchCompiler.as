package com.instagal.bench {
	import regs.*;

	import com.adobe.utils.AGALMiniAssembler;
	import com.instagal.Shader;
	import com.instagal.Tex;
	import com.instagal.tests.Utils;

	import flash.display3D.Context3DProgramType;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.utils.ByteArray;
	import flash.utils.getTimer;
	

	/**
	 * @author plepers
	 */
	public class RevertBenchCompiler {
		
		internal var tf : TextField;
		
		private var _score : int = 0;
		private var _compileNum : int = 0;
		
		
		private var _frame : int = 200; // ms
		
		public function RevertBenchCompiler() {

			tf = new TextField();
			tf.autoSize = TextFieldAutoSize.LEFT;
			
			staticInit();
			
CONFIG::mini {	
			tf.appendText( "Bench AgalMiniAssembler (click to run) \n" );
}
CONFIG::insta {
			tf.appendText( "Bench Instagal Assembler (click to run) \n" );
}
		}
		public function run() : void {

			_compileNum = 0;
			_score = 0;
			
CONFIG::mini {	
			_runFragmentLoopMini();
			_runVertexLoopMini();
}
CONFIG::insta { 		
			_runFragmentLoopInsta();
			_runVertexLoopInsta();
}
			if( tf.numLines > 15 ) tf.text = "";
			
CONFIG::mini {	
			tf.appendText( " "+ _compileNum + " compilations in "+ _frame + " ms \n" );
}
CONFIG::insta {
			tf.appendText( " "+ _compileNum + " compilations in "+ _frame + " ms \n" );
}
		}
		

		private function staticInit() : void {
			// run some loop to don't take in account static initialization time
			var ol : int = _frame;
			_frame = 10;
			
			var comp : Boolean;
			
			comp = Utils.compareBytes( _runFragmentLoopMini(), _runFragmentLoopInsta() );
			if( ! comp ) {
				tf.appendText( "Oups, broken fragment shader\n" );
				Utils.logBytes(_runFragmentLoopMini(), 7 );
				Utils.logBytes(_runFragmentLoopInsta(), 7 );
			}
			comp = Utils.compareBytes( _runVertexLoopMini(), _runVertexLoopInsta() );
			if( ! comp ) 
				tf.appendText( "Oups, broken vertex shader\n" );
			
			_frame = ol;
		}
		
		
		
		private function _runVertexLoopMini() : ByteArray {
			
			var vba : ByteArray;
			var st : int;
			var ama : AGALMiniAssembler = new AGALMiniAssembler();
			
			st = getTimer();
			
			while( getTimer() - st < _frame){
				vba = ama.assemble( "vertex", V_AGAL );
				_compileNum++;
			}
			
			return vba;
		}


		private function _runVertexLoopInsta() : ByteArray {
			

CONFIG::insta_writeb {
			var vba : ByteArray = new ByteArray();
}
CONFIG::insta_complete {
			var vba : ByteArray;
}
			
			var shader : Shader;
			var st : int;
			
			st = getTimer();
			
			while( getTimer() - st < _frame){
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

CONFIG::insta_writeb {
				shader.writeBytes( vba );
}
CONFIG::insta_complete {
				vba = shader.complete();
}
				_compileNum++;
			}
			
			return vba;
		}



		private function _runFragmentLoopMini() : ByteArray {
			
			var vba : ByteArray;
			var st : int;
			var ama : AGALMiniAssembler = new AGALMiniAssembler();
			
			st = getTimer();
			
			while( getTimer() - st < _frame){
				vba = ama.assemble( "fragment", F_AGAL, 2 );
				_compileNum++;
			}
			
			return vba;
		}
		
		private function _runFragmentLoopInsta() : ByteArray {
			

CONFIG::insta_writeb {
			var vba : ByteArray = new ByteArray();
}
CONFIG::insta_complete {
			var vba : ByteArray;
}
			
			var shader : Shader;
			var st : int;
			
			st = getTimer();
			
			while( getTimer() - st < _frame){
				shader = new Shader( Context3DProgramType.FRAGMENT, 2 );
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
				
CONFIG::insta_writeb {
				shader.writeBytes( vba );
}
CONFIG::insta_complete {
				vba = shader.complete();
}
				_compileNum++;
			}
			
			return vba;
		}
		
	}

}



// be fair, 
// don't construct the string in loops

const V_AGAL : String =  [
	"mov vt0, va0",
	"mov vt2, va2",
	"m44 vt7, vt0, vc0",
	"mul op, vt7, vc4",
	"mov v0, va1",
	"m44 vt1.xyz, vt0, vc5",
	"mov vt1.w, vt0.w",
	"m33 vt3.xyz, vt2.xyz, vc9",
	"mov vt3.w, vt2.w",
	"mov v1, vt3",
	"sub vt2, vc13, vt1",
	"nrm vt4.xyz,vt2.xyz",
	"dp3 vt1.w, vt3.xyz, vt4.xyz",
	"sub v2.w, vc13.w, vt1.w",
	"add vt1.w, vt1.w, vt1.w",
	"mul vt1.xyz, vt3.xyz, vt1.w",					
	"sub vt1.xyz, vt1.xyz, vt4.xyz",				
	"nrm v2.xyz, vt1.xyz" 
].join( '\n' );

const F_AGAL : String =  [
	"mov ft0 	   ,  fc2",
	"tex ft1 	   ,  v1      , fs0 <cube,nearest,clamp>",
	"div ft1.w     ,  ft1.w   , fc0.z",
	"sub ft1.w     ,  ft1.w   , fc3.y",
	"pow ft1.w     ,  fc3.x   , ft1.w",
	"mul ft1.xyz   ,  ft1.xyz , ft1.w",
	"mul ft1.xyz   ,  ft1.xyz , fc3.z",
	"mul ft0.xyz   ,  ft1.xyz , ft0.xyz	",
	"tex ft1       ,  v2.xyz  , fs1 <cube,nearest,clamp>",
	"div ft1.w     ,  ft1.w   , fc0.z",
	"sub ft1.w     ,  ft1.w   , fc4.z",
	"pow ft1.w     ,  fc4.x   , ft1.w",
	"mul ft1.xyz   ,  ft1.xyz , ft1.w",
	"pow ft1.w     ,  v2.w    , fc4.y",
	"mul ft1.w     ,  ft1.w   , fc1.w",
	"add ft1.w     ,  ft1.w   , fc1.z",
	"mul ft1.xyz   ,  ft1.xyz , ft1.w",
	"add ft0.xyz   ,  ft0.xyz , ft1.xyz",			
	"tex ft1       ,  v0      , fs2 <2d,nearest,clamp,dxt1>",
	"mul ft0.xyz   ,  ft0.xyz , ft1.x",
	"mul ft0.xyz   ,  ft0.xyz , fc5.x",
	"pow ft0.xyz   ,  ft0.xyz , fc5.y",
	"mov oc        ,  ft0"
].join( '\n' );


