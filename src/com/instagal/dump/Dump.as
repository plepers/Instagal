package com.instagal.dump {

	import com.instagal.Shader;

	import flash.utils.ByteArray;
	import flash.utils.Endian;

	/**
	 * @author Pierre Lepers
	 * com.instagal.Utils
	 */
	public class Dump {
		
		private static const _buffer : ByteArray = new ByteArray();

		public static function dumpShader( shader : Shader ) : DumpedShader {
			
			_buffer.position = 
			_buffer.length = 0;
			_buffer.endian = Endian.LITTLE_ENDIAN;
			
			shader.writeBytes( _buffer, false );
			
			return dump( _buffer );
		}

		public static function dump( agal : ByteArray ) : DumpedShader {
			agal.position = 0;
			var dumped : DumpedShader = new DumpedShader();
			dumped.readExternal( agal );
			return dumped;
		}
		
		
	}
}
