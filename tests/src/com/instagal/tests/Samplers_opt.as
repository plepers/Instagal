package com.instagal.tests {
	import regs.*;
	import com.instagal.Tex;
	import flash.display3D.Context3DProgramType;

	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.tests.Op3_nomask
	 */
	public class Samplers_opt extends CompareTest {
		public function Samplers_opt() {
			super();
			
			_agalType = Context3DProgramType.FRAGMENT;
			
			_agalString = "";
			_agalString += 	"ted ft4 , v0, fs0<cube>   \n";
			_agalString += 	"tex ft5 , v1, fs1<cube, linear>   \n";
			_agalString += 	"ted ft4 , v2, fs2<2d, nearest, mipnearest>   \n";
			_agalString += 	"ted ft4 , v2, fs2<2d, nearest, miplinear>   \n";
			_agalString += 	"tex ft5 , v3, fs3<mipnearest>   \n";
			_agalString += 	"ted ft4 , v4, fs4<linear, mipnearest>   \n";
			_agalString += 	"tex ft5 , v5, fs5<ignoresampler, centroid, single>   \n";
			_agalString += 	"ted ft4 , v6, fs6<repeat>   \n";
			_agalString += 	"tex ft5 , v7, fs7<dxt1>   \n";
			_agalString += 	"tex ft5 , v7, fs7<dxt5>   \n";
			_agalString += 	"tex ft5 , v7, fs7<video>   \n";
			
		}
		
		
		
		override protected function _compile() : void {
			_shader.ted( t4, v0, s0 | Tex.CUBE );
			_shader.tex( t5, v1, s1 | Tex.CUBE | Tex.LINEAR );
			_shader.ted( t4, v2, s2 | Tex.MIPNEAREST );
			_shader.ted( t4, v2, s2 | Tex.MIPLINEAR );
			_shader.tex( t5, v3, s3 | Tex.MIPNEAREST );
			_shader.ted( t4, v4, s4 | Tex.LINEAR | Tex.MIPNEAREST );
			_shader.tex( t5, v5, s5 | Tex.CENTROID | Tex.SINGLE | Tex.IGNORESAMPLER );
			_shader.ted( t4, v6, s6 | Tex.REPEAT );
			_shader.tex( t5, v7, s7 | Tex.DXT1);
			_shader.tex( t5, v7, s7 | Tex.DXT5);
			_shader.tex( t5, v7, s7 | Tex.VIDEO);
		}

	}
}

