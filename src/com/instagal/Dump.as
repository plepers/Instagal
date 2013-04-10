package com.instagal {

	import flash.utils.ByteArray;
	import apparat.memory.Memory;
	/**
	 * @author Pierre Lepers
	 * com.instagal.Utils
	 */
	public class Dump {
		
		private static const _buffer : ByteArray;

		public static function dumpShader( shader : ShaderChunk ) : String {
			
			var res : String = "";
			
			var ptr : uint = shader._memoryBlock.position;

			var types : Vector.<String>;
			
			if( shader is Shader ) {
				//res += _dumpHeader( ptr );
				types = _getType(ptr);
				ptr += 7;
			}
			else {
				//res += "### shader chunk ###";
				types = TYPES;
			}
			
			res += "\n";
			
			var numTokens : uint = ( shader._ptr - ptr ) / 24;
			
			while( numTokens-- > 0 ) {
				res += _dumpToken( ptr, types ) + "\n";
				ptr+=24;
			}
			
			
			return res;
			
		}

		private static function _dumpToken(ptr : uint, types : Vector.<String> ) : String {
			
			const spaces : String = "                    ";
			
			var res : String = OPS[ Memory.readInt(ptr) ] + "	";
			
			var p : String;
			
			// DEST
			
			var dest : uint = Memory.readInt(ptr+4);
			p = types[ (dest&0x0F000000)>>>24];
			p += dest&0xFFFF;
			
			if( (dest&0xf0000) != 0xf0000 ) {
				p += ".";
				if( (dest&0x80000) ) p += "w";
				if( (dest&0x40000) ) p += "z";
				if( (dest&0x20000) ) p += "y";
				if( (dest&0x10000) ) p += "x";
			}
			
			p += spaces.substr( 0, 11-p.length );
			res += p;
			
			var off : uint;
			var swizzle : String;
			var s : String;
			
			// src1
			var srcA : uint = Memory.readInt(ptr+8);
			var srcB : uint = Memory.readInt(ptr+12);
			if( 0 == srcA && 0 == srcB )
				return res;
				
			res += " , ";
			
			p= types[ srcB & 0xF ];
			
			if( srcB & 0x80000000 ) { // indirect
				off = (srcA>>>16) & 0xFF;
				p += "["+types[ (srcB >>> 8)&0xF ] + (srcA & 0xFFFF) + "." + COMPS[ (srcB >>> 16)&3 ] + (( off>0 )? "+"+off:"" )+"]";
			} else {
				p += srcA & 0xFFFF;
			}
			
			if( uint(srcA & 0xFF000000) != 0xE4000000 ) 
				p += "."+getSwizzle( srcA>>24 );
			
			
			p += spaces.substr( 0, 11-p.length );
			res += p;

			// src2
			srcA = Memory.readInt(ptr+16);
			srcB = Memory.readInt(ptr+20);
			
			if( 0 == srcA && 0 == srcB )
				return res;

			res += " , ";
			
			p= types[ srcB & 0xF ];
			
			if( srcB & 0x80000000 ) { // indirect
				off = (srcA>>>16) & 0xFF;
				p += "["+types[ (srcB >>> 8)&0xF ] + (srcA & 0xFFFF) + "." + COMPS[ (srcB >>> 16)&3 ] + (( off>0 )?"+"+off:"" )+"]";
			} else {
				p += srcA & 0xFFFF;
			}
			
			if( uint(srcA & 0xFF000000) != 0xE4000000 ) 
				p += "."+getSwizzle( srcA>>24 );
			
			res += p;
			
			return res;
			
		}

		private static function getSwizzle(i : uint) : String {
			var code3 : uint = (i>>6)&3;
			var code2 : uint = (i>>4)&3;
			var code1 : uint = (i>>2)&3;
			var code0 : uint = i&3;
			
			
			if( code2 == code3 ) {
				if( code1 == code3 ) {
					if( code0 == code3 ) {
						return COMPS[code0];
					} else {
						return COMPS[code0]+COMPS[code1];
					}
				} else {
					return COMPS[code0]+COMPS[code1]+COMPS[code2];
				}
			} else 
				return COMPS[code0]+COMPS[code1]+COMPS[code2]+COMPS[code3];
			
			
		}

		private static function _dumpHeader(ptr : uint) : String {
			
			if( Memory.readUnsignedByte(ptr) != 0xA0 )
				throw new Error( "com.instagal.AgalUtils - _dumpHeader : invalid magic" );
			if( Memory.readUnsignedByte(ptr + 5) != 0xA1 )
				throw new Error( "com.instagal.AgalUtils - _dumpHeader : invalid typeId" );
			
			var version : uint = Memory.readInt( ptr+1 );
			var type : uint = Memory.readUnsignedByte( ptr+6 );

			
			if ( type == 1 )
				return "### fragment shader v"+version+" ###";
			else if ( type == 0 )
				return "### vertex shader v"+version+" ###";
			else 
				throw new Error( "com.instagal.AgalUtils - _dumpHeader : invalide type" );
		
			return null;
		}

		private static function _getType(ptr : uint) : Vector.<String> {
			
			var type : uint = Memory.readUnsignedByte( ptr+6 );
			
			if ( type == 1 )
				return FTYPES;
			else if ( type == 0 )
				return VTYPES;
			else 
				throw new Error( "com.instagal.AgalUtils - _getType : invalide type" );
		
			return null;
		}
		
		private static const COMPS : Vector.<String> = new <String>[
			"x",
			"y",
			"z",
			"w"
		];
		
		private static const VTYPES : Vector.<String> = new <String>[
			"va",
			"vc", 
			"vt", 
			"op",
			"v", 
			"##", 
			"##"
		];
		private static const FTYPES : Vector.<String> = new <String>[
			"##",
			"fc", 
			"ft", 
			"oc",
			"v", 
			"fs", 
			"od"
		];
		
		private static const TYPES : Vector.<String> = new <String>[
			"a",
			"c", 
			"t", 
			"o",
			"v", 
			"s", 
			"od"
		];
		
		
		private static const OPS : Vector.<String> = new <String>[
			"mov",
			"add",
			"sub",
			"mul",
			"div",
			"rcp",
			"min",
			"max",
			"frc",
			"sqt",
			"rsq",
			"pow",
			"log",
			"exp",
			"nrm",
			"sin",
			"cos",
			"crs",
			"dp3",
			"dp4",
			"abs",
			"neg",
			"sat",
			"m33",
			"m44",
			"m34",
			"ifz",
			"inz",
			"ife",
			"ine",
			"ifg",
			"ifl",
			"ieg",
			"iel",
			"els",
			"eif",
			"rep",
			"erp",
			"brk",
			"kil",
			"tex",
			"sge",
			"slt",
			"sgn",
			"seq",
			"sne"
		];
		
	}
}

class Token {

	private var _op : uint;
	
	
}
