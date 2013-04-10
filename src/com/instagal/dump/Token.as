package com.instagal.dump {

	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	/**
	 * @author Pierre Lepers
	 * com.instagal.dump.Token
	 */
	public class Token implements IExternalizable{
	
		private var _op : uint;
		private var _dest : Dest;
		private var _src1 : Source;
		private var _src2 : Source;
	
		public function Token() {
			
		}
	
		public function readExternal(input : IDataInput) : void {
			_op = input.readUnsignedInt();
			_dest = Dest.readDest(input);
			_src1 = Source.readSource(input);
			_src2 = Source.readSource(input);
		}
	
		public function writeExternal(output : IDataOutput) : void {
			
		}
	
		public static function readToken( input : IDataInput ) : Token {
			var t : Token = new Token();
			t.readExternal(input);
			return t;
		}

		public function get op() : uint {
			return _op;
		}

		public function get dest() : Dest {
			return _dest;
		}

		public function get src1() : Source {
			return _src1;
		}

		public function get src2() : Source {
			return _src2;
		}
	}
}
