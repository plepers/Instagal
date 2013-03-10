package com.instagal.tests {
	import com.instagal.Tex;
	import com.instagal.regs.*;

	import flash.display3D.Context3DProgramType;

	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.tests.Op3_nomask
	 */
	public class Samplers_bias extends CompareTest {
		public function Samplers_bias() {
			super();

			_agalType = Context3DProgramType.FRAGMENT;

			_agalString = "";
			_agalString += "ted ft4 , v0, fs0<cube, 1.3>   \n";
			_agalString += "tex ft5 , v1, fs1<cube, linear, 1.6>   \n";
			_agalString += "ted ft4 , v2, fs2<2d, nearest, mipnearest, 12.3>   \n";
			_agalString += "ted ft4 , v2, fs2<2d, nearest, miplinear, 12.4>   \n";
			_agalString += "tex ft5 , v3, fs3<mipnearest, 12.5>   \n";
			_agalString += "ted ft4 , v4, fs4<linear, mipnearest, 12.6>   \n";
			_agalString += "tex ft5 , v5, fs5<ignoresampler, centroid, single, 12.7>   \n";
			_agalString += "ted ft4 , v6, fs6<repeat, 12.8>   \n";
			_agalString += "tex ft5 , v7, fs7<dxt1, 12.9>   \n";
			_agalString += "tex ft5 , v7, fs7<dxt5, 13>   \n";
			_agalString += "tex ft5 , v7, fs7<video, 14>   \n";
		}

		override protected function _compile() : void {
			_shader.ted(t4, v0, s0 | Tex.bias(1.3) | Tex.CUBE);
			_shader.tex(t5, v1, s1 | Tex.bias(1.6) | Tex.CUBE | Tex.LINEAR);
			_shader.ted(t4, v2, s2 | Tex.bias(12.3) | Tex.MIPNEAREST);
			_shader.ted(t4, v2, s2 | Tex.bias(12.4) | Tex.MIPLINEAR);
			_shader.tex(t5, v3, s3 | Tex.bias(12.5) | Tex.MIPNEAREST);
			_shader.ted(t4, v4, s4 | Tex.bias(12.6) | Tex.LINEAR | Tex.MIPNEAREST);
			_shader.tex(t5, v5, s5 | Tex.bias(12.7) | Tex.CENTROID | Tex.SINGLE | Tex.IGNORESAMPLER);
			_shader.ted(t4, v6, s6 | Tex.bias(12.8) | Tex.REPEAT);
			_shader.tex(t5, v7, s7 | Tex.bias(12.9) | Tex.DXT1);
			_shader.tex(t5, v7, s7 | Tex.bias(13) | Tex.DXT5);
			_shader.tex(t5, v7, s7 | Tex.bias(14) | Tex.VIDEO);
		}
	}
}

