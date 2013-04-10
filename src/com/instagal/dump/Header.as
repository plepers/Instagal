package com.instagal.dump {

	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	/**
	 * @author Pierre Lepers
	 * com.instagal.dump.Header
	 */
	public class Header implements IExternalizable {
	
		private var _version : uint;
		private var _type : uint;
	
		public function readExternal(input : IDataInput) : void {
			if( input.readUnsignedByte() != 0xA0 )
				throw new Error( "com.instagal.AgalUtils - _dumpHeader : invalid magic" );
	
			_version = input.readUnsignedInt( );
	
			if( input.readUnsignedByte() != 0xA1 )
				throw new Error( "com.instagal.AgalUtils - _dumpHeader : invalid typeId" );
			
			_type = input.readUnsignedByte( );
		}
	
		public function writeExternal(output : IDataOutput) : void {
		}
	
		public static function readHeader( input : IDataInput ) : Header {
			var h : Header = new Header();
			h.readExternal(input);
			return h;
		}

		public function get type() : uint {
			return _type;
		}

		public function get version() : uint {
			return _version;
		}
	}
}
