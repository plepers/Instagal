package com.instagal.tests {

	import flash.utils.Endian;
	import flash.utils.ByteArray;
	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.tests.Utils
	 */
	public class Utils {

		public static function compareBytes( ba1 : ByteArray, ba2 : ByteArray ) : Boolean {
			
			if( ba1.length != ba2.length ) return false;
			
			ba1.position = ba2.position = 0;
			
			while( ba1.bytesAvailable ) 
				if( ba1.readUnsignedByte() != ba2.readUnsignedByte() ) {
					trace( "com.lepers.agal.tests.Utils - compareBytes -- breakAt ", ba1.position-1, Math.ceil( ( ba1.position-8 ) / 24 ) );
					return false;
				}
			
			
			return true;
			
		}

		public static function logBytes( ba : ByteArray, from : uint = 0 ) : void {
			
			trace( "============== logBytes ==============" );
			
			ba.position = from;
			
			var c : int = 0;
			var str : String;
			var res : String = "";
			var val : uint ;
			while( ba.bytesAvailable ) {
				c++;
				val = ba.readUnsignedByte();
				str = val.toString( 16 ).toUpperCase();
				if( str.length == 1 ) str = '0'+str;
				
				res += str;
				
				if( c % 4 == 0 ) res += " "; 
				if( c % 24 == 0 ) res += "\n"; 
				
			}
			
			trace( res );
		}
	}
}
