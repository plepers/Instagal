package com.instagal.dump {

	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	/**
	 * @author Pierre Lepers
	 * com.instagal.dump.DumpedShader
	 */
	public class DumpedShader implements IExternalizable {

		private var _header : Header;
		private var _tokens : Vector.<Token>;
	
		public function readExternal(input : IDataInput) : void {
			_header = Header.readHeader(input);
			
			_tokens = new Vector.<Token>();
			
			while( input.bytesAvailable )
				_tokens.push( Token.readToken(input) );
		}
		
		public function writeExternal(output : IDataOutput) : void {
			
		}
		
		public function get tokens() : Vector.<Token> {
			return _tokens;
		}
		
		public function get header() : Header {
			return _header;
		}
		
	}
}
