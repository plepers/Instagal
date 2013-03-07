package com.instagal.bench{

	import apparat.memory.MemoryPool;
	import com.adobe.utils.AGALMiniAssembler;
	import com.instagal.Shader;
	import flash.display.Sprite;
	import flash.display3D.Context3DProgramType;
	import flash.events.MouseEvent;
	import flash.net.FileReference;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.utils.ByteArray;
	import flash.utils.getTimer;
	import regs.a0;
	import regs.a1;
	import regs.a2;
	import regs.c0;
	import regs.c13;
	import regs.c4;
	import regs.c5;
	import regs.c9;
	import regs.op;
	import regs.t0;
	import regs.t1;
	import regs.t2;
	import regs.t3;
	import regs.t4;
	import regs.t7;
	import regs.v0;
	import regs.v1;
	import regs.v2;
	import regs.w;
	import regs.xyz;




	/**
	 * @author Pierre Lepers
	 * MiniAssemblerBench
	 */
	public class MiniAssemblerBench extends Sprite {

		private var tf : TextField;

		public function MiniAssemblerBench() {
			
			MemoryPool.initialize();
			
			stage.addEventListener( MouseEvent.CLICK, onClick );

			tf = new TextField();
			tf.autoSize = TextFieldAutoSize.LEFT;
			addChild( tf );
		}

		private function onClick(event : MouseEvent) : void {
			_run();
		}

		private function _run() : void {
			
			
			var vba : ByteArray;
			var fba : ByteArray;
			
			var st : int, et : int;
			var i : int;
			var shader : Shader;
			
			st = getTimer();
			
			for ( i = 0; i < 500; i++) {
				vba = new AGALMiniAssembler().assemble( Context3DProgramType.VERTEX, V_AGAL );
//				fba = new AGALMiniAssembler().assemble( Context3DProgramType.FRAGMENT, F_AGAL );
			}
			
			et = getTimer();

			tf.appendText( "mini a 200 compiles in "+(et-st) + " ms \n" );
			
			st = getTimer();
			
			for ( i = 0; i < 500; i++) {
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
			
			tf.appendText( "power 200 compiles in "+(et-st) + " ms \n" );
			
			
//			var fr : FileReference = new FileReference();
//			fr.save( vba, "fragShader.agal" );
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
"mov ft0, fc2                               ",
"tex ft1, v1, fs0 <cube,nearest,clamp>      ",
"div ft1.w, ft1.w, fc0.z	                ",
"sub ft1.w, ft1.w, fc3.y	                ",
"pow ft1.w, fc3.x,ft1.w	                    ",
"mul ft1.xyz, ft1.xyz, ft1.w	            ",
"mul ft1.xyz, ft1.xyz, fc3.z	            ",
"mul ft0.xyz, ft1.xyz, ft0.xyz	            ",
"tex ft1, v2.xyz, fs1 <cube,nearest,clamp>  ",
"div ft1.w, ft1.w, fc0.z	                ",
"sub ft1.w, ft1.w, fc4.z	                ",
"pow ft1.w, fc4.x,ft1.w	                    ",
"mul ft1.xyz, ft1.xyz, ft1.w	            ",
"pow ft1.w, v2.w, fc4.y	                    ",
"mul ft1.w, ft1.w, fc1.w	                ",
"add ft1.w, ft1.w, fc1.z	                ",
"mul ft1.xyz, ft1.xyz, ft1.w	            ",
"add ft0.xyz, ft0.xyz, ft1.xyz				",			
"tex ft1, v0, fs2 <2d,nearest,clamp,dxt1>   ",
"mul ft0.xyz, ft0.xyz, ft1.x                ",
"mul ft0.xyz, ft0.xyz, fc5.x                ",
"pow ft0.xyz, ft0.xyz, fc5.y	            ",
"mov oc, ft0                                "
].join( '\n' );