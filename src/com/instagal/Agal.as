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
			var p : uint = pos;
			Memory.writeInt(0x00, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function rcp(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x05, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function frc(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x08, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function sqt(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x09, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function rsq(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x0a, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function log(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x0c, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function exp(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x0d, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function nrm(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x0e, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function sin(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x0f, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function cos(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x10, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function abs(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x14, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function neg(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x15, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function sat(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x16, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function ddx(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x1a, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function ddy(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x1b, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function ife(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x1c, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function ine(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x1d, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function ifg(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x1e, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function ifl(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x1f, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}

		public static function sgn(pos : uint, dest : uint, src : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x2b, p);
			Agal._writeOp2(p, dest, src);
			pos = p;
		}
		
		// ---- OP 3
				
		public static function add(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x01, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}

		public static function sub(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x02, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}

		public static function mul(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x03, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}

		public static function div(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x04, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}

		public static function min(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x06, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}

		public static function max(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x07, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}

		public static function pow(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x0b, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}

		public static function crs(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x11, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}

		public static function dp3(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x12, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}

		public static function dp4(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x13, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}

		public static function m33(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x17, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}

		public static function m44(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x18, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}

		public static function m34(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x19, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}

		public static function sge(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x29, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}

		public static function slt(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x2a, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}

		public static function seq(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x2c, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}

		public static function sne(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x2d, p);
			Agal._writeOp3(p, dest, src1, src2);
			pos = p;
		}
		
		// ---- OP TEX
		
		public static function ted(pos : uint, dest : uint, tcoord : uint, samp : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x26, p);
			Agal._writeOpTex(p, dest, tcoord, samp);
			pos = p;
		}

		public static function tex(pos : uint, dest : uint, tcoord : uint, samp : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x28, p);
			Agal._writeOpTex(p, dest, tcoord, samp);
			pos = p;
		}

		// ---- OP 1

		public static function kil(pos : uint, dest : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x27, p);
			Agal._writeOp1(p, dest);
			pos = p;
		}

		// ---- OP 0

		public static function els(pos : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x20, p);
			Agal._writeOp0(p);
			pos = p;
		}

		public static function eif(pos : uint) : void {
			var p : uint = pos;
			Memory.writeInt(0x21, p);
			Agal._writeOp0(p);
			pos = p;
		}

		public static function _writeOp1(pos : uint, src : uint) : void {
			
			// DEST (nil)
			Agal._writeNullDest( pos );
			
			// SRC 1
			if ( ( src & 0x10000 ) == 0 )
				Agal._writeSource1D( pos, src );
			else 
				Agal._writeSource1I( pos, src );

			// SRC 2 (nil)
			Agal._writeNullSrc2( pos );
			
			Agal._forward(pos);
		}

		public static function _writeOp0(pos : uint) : void {
			Agal._writeNullToken(pos);
			Agal._forward(pos);
		}

		public static function _writeOp2(pos : uint, dest : uint, src : uint) : void {
			
			// DEST
			Agal._writeDest(pos, dest);

			// SRC 1
			if ( ( src & 0x10000 ) == 0 )
				Agal._writeSource1D( pos, src );
			else 
				Agal._writeSource1I( pos, src );

			// SRC 2 (nil)
			Agal._writeNullSrc2( pos );
			
			Agal._forward(pos);
		}

		public static function _writeOp3(pos : uint, dest : uint, src1 : uint, src2 : uint) : void {
			
			// DEST
			Agal._writeDest(pos, dest);

			// SRC 1
			if ( ( src1 & 0x10000 ) == 0 )
				Agal._writeSource1D( pos, src1 );
			else 
				Agal._writeSource1I( pos, src1 );
			
			// SRC 2
			if ( ( src2 & 0x10000 ) == 0 )
				Agal._writeSource2D( pos, src2 );
			else 
				Agal._writeSource2I( pos, src2 );
			
			Agal._forward(pos);
		}
		
		public static function _writeOpTex(pos : uint, dest : uint, src : uint, samp : uint) : void {
			
			// DEST
			Agal._writeDest(pos, dest);


			// SRC 1
			if ( ( src & 0x10000 ) == 0 )
				Agal._writeSource1D( pos, src );
			else 
				Agal._writeSource1I( pos, src );

			
			// SAMPLER
			Agal._writeSampler( pos, samp );
			
			Agal._forward(pos);
		}
		
		
		
		public static function _forward ( pos : uint ) : void {
			__asm(
			//pos += 24;
				GetLocal( pos ),          
				PushByte(24),         
				Add,         
				SetLocal(pos)      
			);
		}
		
		public static function _writeSource1D ( pos : uint, src : uint ) : void {
			__asm(
				//Memory.writeInt( src & 0xFF000FFF, pos += 4);
				//Memory.writeInt(( src >>> 12 ) & 0xF, pos += 4);
				GetLocal( src ),          
				PushUInt(4278194175),  //0xFF000FFF       
				BitAnd,         
				GetLocal(pos),         
				PushByte(8),         
				Add,         
				SetInt,   
				
				GetLocal( src ),         
				PushByte(12),         
				ShiftRightUnsigned,
				PushByte(15),         
				BitAnd,        
				GetLocal(pos),         
				PushByte(12),
				Add,         
				SetInt
			);
		}

		public static function _writeSource2D ( pos : uint, src : uint ) : void {
			__asm(
			//Memory.writeInt( src & 0xFF000FFF, pos += 4);
			//Memory.writeInt(( src >>> 12 ) & 0xF, pos += 4);
				GetLocal( src ),          
				PushUInt(4278194175),  //0xFF000FFF       
				BitAnd,         
				GetLocal(pos),         
				PushByte(16),         
				Add,         
				SetInt,   
				
				GetLocal( src ),         
				PushByte(12),         
				ShiftRightUnsigned,
				PushByte(15),         
				BitAnd,        
				GetLocal(pos),         
				PushByte(20),
				Add,         
				SetInt
			);
		}

		public static function _writeSource1I ( pos : uint, src : uint ) : void {
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
				PushByte(8),         
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
				PushByte(12),         
				Add,         
				SetInt   
			);
		}

		public static function _writeSource2I ( pos : uint, src : uint ) : void {
			__asm(
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
				PushByte(16),         
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
				PushByte(20),         
				Add,         
				SetInt   
			);
		}

		public static function _writeNullSrc1 ( pos : uint ) : void {
			__asm(
			//Memory.writeInt(0, pos += 4);
			//Memory.writeInt(0, pos += 4);
				PushByte(0),         
				GetLocal(pos),     
				PushByte(8),         
				Add,
				SetInt,         
				PushByte(0),         
				GetLocal(pos),         
				PushByte(12),         
				Add,
				SetInt
			);
		}

		public static function _writeNullSrc2 ( pos : uint ) : void {
			__asm(
			//Memory.writeInt(0, pos += 4);
			//Memory.writeInt(0, pos += 4);
				PushByte(0),         
				GetLocal(pos),     
				PushByte(16),         
				Add,
				SetInt,         
				PushByte(0),         
				GetLocal(pos),         
				PushByte(20),         
				Add,
				SetInt
			);
		}

		public static function _writeNullDest ( pos : uint ) : void {
			__asm(
			//Memory.writeInt(0, pos += 4);
				PushByte(0),         
				GetLocal(pos),         
				PushByte(4),         
				Add,        
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
				SetInt
			);
		}

		public static function _writeSampler( pos : uint, samp : uint ) : void {
			//Memory.writeInt( 
			//	( samp & 0x1F ) | (( samp & 0xF00 )<<11)
			//	 , pos + 16 );
			//Memory.writeInt( ( samp & 0xFFFFFF00) | 0x5, pos += 4);
				
				
			__asm(
			//Memory.writeInt( ( samp & 0xFF) , pos += 4);
			//Memory.writeInt( ( samp & 0xFFFFFF00) | 0x5, pos += 4);
			
				GetLocal(samp),         
				PushShort(31), //   0x1F	index   
				BitAnd,         
				GetLocal(samp),         
				PushShort(8160), // 0x1FE0	bias         
				BitAnd,
				PushByte(11),         
				ShiftLeft,         
				BitOr,      
				GetLocal(pos),    
				PushByte(16),         
				Add,         
				SetInt,
				
				//empty stack  
				GetLocal(samp),         
				PushUInt(3758096384), 	// 0xE0000000 	filter   
				BitAnd,         
				PushByte(1),  
				ShiftRightUnsigned, 
				    
				GetLocal(samp),         
				PushUInt(469762048),	// 0x1C000000	mimmap
				BitAnd,         
				PushByte(2),  
				ShiftRightUnsigned,     
				BitOr,      

				GetLocal(samp),         
				PushUInt(66584576),		// 0x03800000	wrapping + specials
				BitAnd,         
				PushByte(3),  
				ShiftRightUnsigned,     
				BitOr,      

				GetLocal(samp),         
				PushUInt(458752),		// 0x70000  	dimensions
				BitAnd,         
				PushByte(4),  
				ShiftRightUnsigned,     
				BitOr,

				GetLocal(samp),         
				PushUInt(57344), 		// 0xE000	  	type
				BitAnd,         
				PushByte(5),  
				ShiftRightUnsigned,     
				BitOr,
				         
				PushByte(5),         
				BitOr,         
				GetLocal(pos),         
				PushByte(20),         
				Add,         
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
					( 1 << (dest >>> 30) ) 
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
				SetInt
			);
		}
		
	}
}
