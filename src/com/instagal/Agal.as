package com.instagal {

	import apparat.memory.Memory;
	import apparat.inline.Macro;

	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.Agal
	 */
	public class Agal extends Macro {

		public static function mov(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x00, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function rcp(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x05, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function frc(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x08, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function sqt(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x09, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function rsq(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x0a, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function log(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x0c, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function exp(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x0d, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function nrm(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x0e, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function sin(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x0f, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function cos(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x10, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function abs(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x14, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function neg(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x15, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function sat(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x16, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function ddx(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x1a, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function ddy(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x1b, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function ife(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x1c, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function ine(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x1d, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function ifg(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x1e, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function ifl(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x1f, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function sgn(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x2b, pos);
			Agal._writeOp2(pos, dest, src);
		}

		public static function add(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x01, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function sub(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x02, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function mul(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x03, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function div(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x04, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function min(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x06, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function max(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x07, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function pow(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x0b, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function crs(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x11, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function dp3(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x12, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function dp4(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x13, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function m33(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x17, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function m44(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x18, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function m34(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x19, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function ted(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x26, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function tex(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x28, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function sge(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x29, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function slt(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x2a, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function seq(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x2c, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function sne(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			Memory.writeInt(0x2d, pos);
			Agal._writeOp3(pos, dest, src1, src2);
		}

		public static function kil(pos : uint, dest : uint) : void {
			Memory.writeInt(0x27, pos);
			Agal._writeOp1(pos, dest);
		}

		public static function els(pos : uint) : void {
			Memory.writeInt(0x20, pos);
			Agal._writeOp0(pos);
		}

		public static function eif(pos : uint) : void {
			Memory.writeInt(0x21, pos);
			Agal._writeOp0(pos);
		}

		public static function _writeOp1(pos : uint, src : uint) : void {
			
			// null dest
			Memory.writeInt(0, pos += 4);
			
			
			// SRC
			// SRC
			if ( ( src & 0x10000 ) == 0x10000 ) {
				Memory.writeInt(0, pos += 4);// TODO implement indirect
			} else {
				Memory.writeInt( src & 0xFF00FFFF, pos += 4);
			}

			Memory.writeInt(( src >>> 20 ) & 0xF, pos += 4);
			
			// null src 2
			Memory.writeInt(0, pos += 4);
			Memory.writeInt(0, pos += 4);

			pos += 4;
		}

		public static function _writeOp0(pos : uint) : void {
			Memory.writeInt(0, pos += 4);
			Memory.writeInt(0, pos += 4);
			Memory.writeInt(0, pos += 4);
			Memory.writeInt(0, pos += 4);
			Memory.writeInt(0, pos += 4);

			pos += 4;
		}

		public static function _writeOp2(pos : uint, dest : uint, src : uint) : void {
			// DEST
			Memory.writeInt(
				( ( 
					( 1 << ((dest >>> 24) & 3) ) | 
					( 1 << ((dest >>> 26) & 3) ) | 
					( 1 << ((dest >>> 28) & 3) ) | 
					( 1 << ((dest >>> 30) & 3) ) 
				  ) << 16 
				) | 
				(dest & 0xffff) |
				((dest & 0x00f00000)<<4),
				pos += 4
			);

			// SRC
			if ( ( src & 0x10000 ) == 0x10000 ) {
				Memory.writeInt(0, pos += 4);// TODO implement indirect
			} else {
				Memory.writeInt( src & 0xFF00FFFF, pos += 4);
			}

			Memory.writeInt(( src >>> 20 ) & 0xF, pos += 4);

			// 0 (SRC2)
			Memory.writeInt(0, pos += 4);
			Memory.writeInt(0, pos += 4);

			pos += 4;
		}

		public static function _writeOp3(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			// DEST
			Memory.writeInt(
				( ( 
					( 1 << ((dest >>> 24) & 3) ) | 
					( 1 << ((dest >>> 26) & 3) ) | 
					( 1 << ((dest >>> 28) & 3) ) | 
					( 1 << ((dest >>> 30) & 3) ) 
				  ) << 16 
				) | 
				(dest & 0xffff) |
				((dest & 0x00f00000)<<4),
				pos += 4
			);

			// SRC
			if ( ( src1 & 0x10000 ) == 0x10000 ) {
				Memory.writeInt(0, pos += 4);// TODO implement indirect
			} else {
				Memory.writeInt( src1 & 0xFF00FFFF, pos += 4);
			}

			Memory.writeInt(( src1 >>> 20 ) & 0xF, pos += 4);
			
			
			// SRC 2
			if ( ( src2 & 0x10000 ) == 0x10000 ) {
				Memory.writeInt(0, pos += 4);// TODO implement indirect
			} else {
				Memory.writeInt( src2 & 0xFF00FFFF, pos += 4);
			}

			Memory.writeInt(( src2 >>> 20 ) & 0xF, pos += 4);


			pos += 4;
		}
	}
}
