package com.instagal.dump {

	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	/**
	 * @author Pierre Lepers
	 * com.instagal.dump.Source
	 */
	public class Source implements IExternalizable {
	
		private var _srcA : uint;
		private var _srcB : uint;
		
		private var _type : uint;
		private var _index : uint = 0;
		
		private var _indirect : Boolean;
		private var _indirectOffset : uint = 0;
		private var _indirectType : uint = 0;
		private var _indirectComp : uint = 0;
		private var _swizzle : uint;
	
		public function isNull() : Boolean {
			return ( 0 == _srcA && 0 == _srcB );
		}
		
		public function readExternal(input : IDataInput) : void {
			_srcA = input.readUnsignedInt();
			_srcB = input.readUnsignedInt();
			
			_type = _srcB & 0xF;
			_indirect = (_srcB & 0x80000000) != 0;
	
			_index = _srcA & 0xFFFF;
			
			if( _indirect ) {
				_indirectOffset = (_srcA>>>16) & 0xFF;
				_indirectType = (_srcB >>> 8 ) & 0xF;
				_indirectComp = (_srcB >>> 16) & 3;
			}
			
			_swizzle = (_srcA >>> 24 ) & 0xFF;
			
		}
	
		public function writeExternal(output : IDataOutput) : void {
			
		}
	
		public static function readSource( input : IDataInput ) : Source {
			var s : Source = new Source();
			s.readExternal(input);
			return s;
		}
	
	
		public function isIndirect() : Boolean {
			return _indirect;
		}
	
		public function get swizzle() : uint { 			return _swizzle; 			}
		public function get indirectComp() : uint { 	return _indirectComp; 		}
		public function get indirectType() : uint { 	return _indirectType; 		}
		public function get indirectOffset() : uint { 	return _indirectOffset; 	}
		public function get index() : uint { 			return _index; 				}
		public function get type() : uint { 			return _type; 				}
		
	}
}
