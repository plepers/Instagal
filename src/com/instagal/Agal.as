package com.instagal {
	import apparat.inline.Macro;
	import apparat.memory.Memory;
	import apparat.asm.*;

	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.Agal
	 */
	public class Agal extends Macro {
		
		// ---- OP 2
		
		public static function mov(pos : uint, dest : uint, src : uint) : void {
			Memory.writeInt(0x00, pos);
//			Agal._forward( pos );
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
		
		// ---- OP 3
				
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
		
		// ---- OP TEX
		
		public static function ted(pos : uint, dest : uint, tcoord : uint, samp : uint) : void {
			Memory.writeInt(0x26, pos);
			Agal._writeOpTex(pos, dest, tcoord, samp);
		}

		public static function tex(pos : uint, dest : uint, tcoord : uint, samp : uint) : void {
			Memory.writeInt(0x28, pos);
			Agal._writeOpTex(pos, dest, tcoord, samp);
		}

		// ---- OP 1

		public static function kil(pos : uint, dest : uint) : void {
			Memory.writeInt(0x27, pos);
			Agal._writeOp1(pos, dest);
		}

		// ---- OP 0

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
			
			
			// SRC 1
			if ( ( src & 0x10000 ) == 0x10000 )  // indirect
				Agal._writeSourceI( pos, src );
			else 
				Agal._writeSourceD( pos, src );

			// SRC 2 (nil)
			Agal._writeNullShort( pos );

			pos += 4;
		}

		public static function _writeOp0(pos : uint) : void {
			Agal._writeNullToken(pos);

			pos += 4;
		}

		public static function _writeOp2(pos : uint, dest : uint, src : uint) : void {
			
			// DEST
			Agal._writeDest(pos, dest);

			// SRC 1
			if ( ( src & 0x10000 ) == 0x10000 )  // indirect
				Agal._writeSourceI( pos, src );
			else 
				Agal._writeSourceD( pos, src );

			// SRC 2 (nil)
			Agal._writeNullShort( pos );

			pos += 4;
		}

		public static function _writeOp3(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			
			// DEST
			Agal._writeDest(pos, dest);

			// SRC 1
			if ( ( src1 & 0x10000 ) == 0x10000 )  // indirect
				Agal._writeSourceI( pos, src1 );
			else 
				Agal._writeSourceD( pos, src1 );
			
			
			
			// SRC 2
			if ( ( src2 & 0x10000 ) == 0x10000 )  // indirect
				Agal._writeSourceI( pos, src2 );
			else 
				Agal._writeSourceD( pos, src2 );
			


			pos += 4;
		}
		
		public static function _writeOpTex(pos : uint, dest : uint, src : uint, samp : uint) : void {
			
			// DEST
			Agal._writeDest(pos, dest);


			// SRC 1
			if ( ( src & 0x10000 ) == 0x10000 )  // indirect
				Agal._writeSourceI( pos, src );
			else 
				Agal._writeSourceD( pos, src );

			
			// SAMPLER
			Agal._writeSampler( pos, samp );

			pos += 4;
		}
		
		public static function _forward ( pos : uint ) : void {
			__asm(
				//pos += 4;
					GetLocal( pos ),          
			        PushByte(4),         
			        Add,         
			        SetLocal(pos)      
				);
		}
		
		public static function _writeSourceD ( pos : uint, src : uint ) : void {
			__asm(
				//Memory.writeInt( src & 0xFF000FFF, pos += 4);
				//Memory.writeInt(( src >>> 12 ) & 0xF, pos += 4);
					GetLocal( src ),          
			        PushUInt(4278194175),  //0xFF000FFF       
			        BitAnd,         
			        GetLocal(pos),         
			        PushByte(4),         
			        Add,         
			        SetInt,   
				
					GetLocal( src ),         
			        PushByte(12),         
        			ShiftRightUnsigned,
					PushByte(15),         
       				BitAnd,        
			        GetLocal(pos),         
			        PushByte(8),         
			        Add,         
			        Dup,         
			        SetLocal(pos),         
			        SetInt    
				);
		}

		public static function _writeSourceI ( pos : uint, src : uint ) : void {
			__asm(
				/*
				Memory.writeInt( 
					(src & 0xFF000000) |
					( (src & 0x3F) <<16 ) |
					( (src >>> 17 ) & 0x7F ) ,
					pos += 4 
				);
				Memory.writeInt(
					( src & 0xF00 ) |  // index type I
					(( src >>> 12 ) & 0xF ) | // type T
					(( src << 10 ) & 0x30000) | //index comp Q
					0x80000000, 
					pos += 4
				);
				 */
					GetLocal(src),         
			        PushUInt(4278190080),         
			        BitAnd,         
			        GetLocal(src),         
			        PushByte(63),         
			        BitAnd,         
			        PushByte(16),         
			        ShiftLeft,         
			        BitOr,         
			        GetLocal(src),         
			        PushByte(17),         
			        ShiftRightUnsigned,         
			        PushByte(127),         
			        BitAnd,         
			        BitOr,         
			        GetLocal(pos),         
			        PushByte(4),         
			        Add,         
			        SetInt,         
			        GetLocal(src),         
			        PushShort(3840),         
			        BitAnd,         
			        GetLocal(src),         
			        PushByte(12),         
			        ShiftRightUnsigned,         
			        PushByte(15),         
			        BitAnd,         
			        BitOr,         
			        GetLocal(src),         
			        PushByte(10),         
			        ShiftLeft,         
			        PushInt(196608),         
			        BitAnd,         
			        BitOr,         
			        PushUInt(2147483648),         
			        BitOr,         
			        GetLocal(pos),         
			        PushByte(8),         
			        Add,         
			        Dup,         
			        SetLocal(pos),         
			        SetInt        
				);
		}

		public static function _writeNullShort ( pos : uint ) : void {
			__asm(
			//Memory.writeInt(0, pos += 4);
			//Memory.writeInt(0, pos += 4);
				PushByte(0),         
		        GetLocal(pos),         
		        PushByte(4),         
		        Add,        
		        SetInt,         
		        PushByte(0),         
		        GetLocal(pos),         
		        PushByte(8),         
		        Add,
				Dup,         
		        SetLocal(pos),   
		        SetInt
			);
		}

		public static function _writeNullToken ( pos : uint ) : void {
			__asm(
			//Memory.writeInt(0, pos += 4);
			//Memory.writeInt(0, pos += 4);
			//Memory.writeInt(0, pos += 4);
			//Memory.writeInt(0, pos += 4);
			//Memory.writeInt(0, pos += 4);
				PushByte(0),         
		        GetLocal(pos),         
		        PushByte(4),         
		        Add,         
		        SetInt,         
		        PushByte(0),         
		        GetLocal( pos ),         
		        PushByte(8),         
		        Add,         
		        SetInt,         
		        PushByte(0),         
		        GetLocal( pos ),         
		        PushByte(12),         
		        Add,         
		        SetInt,         
		        PushByte(0),         
		        GetLocal( pos ),         
		        PushByte(16),         
		        Add,         
		        SetInt,         
		        PushByte(0),         
		        GetLocal( pos ),         
		        PushByte(20),         
		        Add,         
		        Dup,         
		        SetLocal( pos ),         
		        SetInt
			);
		}

		public static function _writeSampler( pos : uint, samp : uint ) : void {
			__asm(
			//Memory.writeInt( ( samp & 0xFF) , pos += 4);
			//Memory.writeInt( ( samp & 0xFFFFFF00) | 0x5, pos += 4);
				GetLocal(samp),         
		        PushShort(255),         
		        BitAnd,         
		        GetLocal(pos),         
		        PushByte(4),         
		        Add,         
		        SetInt,         
		        GetLocal(samp),         
		        PushUInt(4294967040),         
		        BitAnd,         
		        PushByte(5),         
		        BitOr,         
		        GetLocal(pos),         
		        PushByte(8),         
		        Add,         
		        Dup,         
		        SetLocal(pos),         
		        SetInt
			);
		}

		public static function _writeDest ( pos : uint, dest : uint ) : void {
			__asm(
			/*
			Memory.writeInt(
				( ( 
					( 1 << ((dest >>> 24) & 3) ) | 
					( 1 << ((dest >>> 26) & 3) ) | 
					( 1 << ((dest >>> 28) & 3) ) | 
					( 1 << ((dest >>> 30) & 3) ) 
				  ) << 16 
				) | 
				(dest & 0x0FFF) |
				((dest & 0xF000) << 12 ),
				pos += 4
			);*/
		        PushByte(1),         
		        GetLocal(dest),         
		        PushByte(24),         
		        ShiftRightUnsigned,         
		        PushByte(3),         
		        BitAnd,         
		        ShiftLeft,         
		        PushByte(1),         
		        GetLocal(dest),         
		        PushByte(26),         
		        ShiftRightUnsigned,         
		        PushByte(3),         
		        BitAnd,         
		        ShiftLeft,         
		        BitOr,         
		        PushByte(1),         
		        GetLocal(dest),         
		        PushByte(28),         
		        ShiftRightUnsigned,         
		        PushByte(3),         
		        BitAnd,         
		        ShiftLeft,         
		        BitOr,         
		        PushByte(1),         
		        GetLocal(dest),         
		        PushByte(30),         
		        ShiftRightUnsigned,         
		        PushByte(3),         
		        BitAnd,         
		        ShiftLeft,         
		        BitOr,         
		        PushByte(16),         
		        ShiftLeft,         
		        GetLocal(dest),         
		        PushShort(4095),         
		        BitAnd,         
		        BitOr,         
		        GetLocal(dest),         
		        PushInt(61440),         
		        BitAnd,         
		        PushByte(12),         
		        ShiftLeft,         
		        BitOr,         
		        GetLocal(pos),         
		        PushByte(4),         
		        Add,         
		        Dup,         
		        SetLocal(pos),         
		        SetInt
			);
		}
		
	}
}
