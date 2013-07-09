package com.instagal.dump {

	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	/**
	 * @author Pierre Lepers
	 * com.instagal.dump.Dest
	 */
	public class Dest implements IExternalizable {
	
		private var _dest : uint;
		
		private var _type : uint;
		private var _index : uint;
		private var _mask : uint;
		
		public function isNull() : Boolean {
			return ( 0 == _dest );
		}
	
		public function readExternal(input : IDataInput) : void {
			_dest = input.readUnsignedInt();
			
			_type  = ( _dest & 0x0F000000) >>> 24;
			_index = ( _dest & 0xFFFF );
			_mask  = ( _dest & 0xf0000) >>> 16;
		}
	
		public function writeExternal(output : IDataOutput) : void {
		}
	
		public static function readDest( input : IDataInput ) : Dest {
			var d : Dest = new Dest();
			d.readExternal(input);
			return d;
		}
		
		
		public function get type() : uint {
			return _type;
		}

		public function get mask() : uint {
			return _mask;
		}

		public function get index() : uint {
			return _index;
		}
		
	}
}
