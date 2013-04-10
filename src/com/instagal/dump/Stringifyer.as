package com.instagal.dump {
	/**
	 * @author Pierre Lepers
	 * com.instagal.dump.Stringifyer
	 */
	public class Stringifyer {

		public static function toAgal( dumped : DumpedShader ) : String {
			
			const spaces : String = "                  ";
			var res : String = "";
			var types : Vector.<String> = (dumped.header.type == 1) ? FTYPES : VTYPES;
			var tokens : Vector.<Token> = dumped.tokens;
			var token : Token;
			var dest : Dest;
			var src : Source;
			var str : String;
			
			for (var i : int = 0, l : int = tokens.length; i < l; i++) {
				token = tokens[i];
				res += OPS[ token.op ] + "	";
				
				dest = token.dest;
				if( ! dest.isNull() ) {
					str = types[ dest.type ]+dest.index;
					if( dest.mask != 0xf )
						str += "."+getMask(dest.mask);
					str += spaces.substr( 0, 17-str.length );
					res += str;
				}
				
				src = token.src1;
				
				if( !src.isNull() ) {
					res += " , ";
					str = types[ src.type ];
					if( src.isIndirect() ) 
						str += "["+types[ src.indirectType ] + src.index + "." + COMPS[ src.indirectComp ] + (( src.indirectOffset>0 )? "+"+src.indirectOffset:"" )+"]";
					else
						str += src.index;
					
					if( src.swizzle != 0xE4 )
						str += "."+getSwizzle( src.swizzle );

					str += spaces.substr( 0, 17-str.length );
					res += str;
				}

				src = token.src2;
				
				if( !src.isNull() ) {
					res += " , ";
					str = types[ src.type ];
					if( src.isIndirect() ) 
						str += "["+types[ src.indirectType ] + src.index + "." + COMPS[ src.indirectComp ] + (( src.indirectOffset>0 )? "+"+src.indirectOffset:"" )+"]";
					else
						str += src.index;
					
					if( src.swizzle != 0xE4 )
						str += "."+getSwizzle( src.swizzle );
						
					str += spaces.substr( 0, 17-str.length );
					res += str;
				}
				
				res += "\n";
			}
			
			return res;
			
		}

		public static function toInstagal( dumped : DumpedShader ) : String {
			const spaces : String = "                  ";
			var res : String = "";
			var tokens : Vector.<Token> = dumped.tokens;
			var token : Token;
			var dest : Dest;
			var src : Source;
			var str : String;
			
			for (var i : int = 0, l : int = tokens.length; i < l; i++) {
				token = tokens[i];
				res += OPS[ token.op ] + "(	";
				
				dest = token.dest;
				if( ! dest.isNull() ) {
					str = TYPES[ dest.type ]+dest.index;
					str += spaces.substr( 0, 5-str.length );
					if( dest.mask != 0xf )
						str += " ^ "+getMask(dest.mask);
					str += spaces.substr( 0, 12-str.length );
					res += str;
				}
				
				src = token.src1;
				
				if( !src.isNull() ) {
					res += " , ";
					str = TYPES[ src.type ];
					if( src.isIndirect() ) 
						str += "("+TYPES[ src.indirectType ] + src.index + " ^ " + COMPS[ src.indirectComp ] + ")" + (( src.indirectOffset>0 )? "+"+src.indirectOffset:"" );
					else {
						str += src.index;
						str += spaces.substr( 0, 5-str.length );
					}
					
					if( src.swizzle != 0xE4 )
						str += " ^ "+getSwizzle( src.swizzle );

					str += spaces.substr( 0, 12-str.length );
					res += str;
				}

				src = token.src2;
				
				if( !src.isNull() ) {
					res += " , ";
					str = TYPES[ src.type ];
					if( src.isIndirect() ) 
						str += "("+TYPES[ src.indirectType ] + src.index + " ^ " + COMPS[ src.indirectComp ] + ")" + (( src.indirectOffset>0 )? "+"+src.indirectOffset:"" );
					else {
						str += src.index;
						str += spaces.substr( 0, 5-str.length );
					}
					
					if( src.swizzle != 0xE4 )
						str += " ^ "+getSwizzle( src.swizzle );

					str += spaces.substr( 0, 12-str.length );
					res += str;
				}
				
				res += " );\n";
			}
			
			return res;
		}
		
		private static function getSwizzle(swizzle : uint) : String {
			var code3 : uint = (swizzle>>6)&3;
			var code2 : uint = (swizzle>>4)&3;
			var code1 : uint = (swizzle>>2)&3;
			var code0 : uint = swizzle&3;
			
			
			if( code2 == code3 ) {
				if( code1 == code3 ) {
					if( code0 == code3 ) 
						return COMPS[code0];
					else 
						return COMPS[code0]+COMPS[code1];
				} else 
					return COMPS[code0]+COMPS[code1]+COMPS[code2];
			}
			
			return COMPS[code0]+COMPS[code1]+COMPS[code2]+COMPS[code3];
		}

		private static function getMask(mask : uint) : String {
			var p : String = "";
			if( (mask & 0x8) ) p += "w";
			if( (mask & 0x4) ) p += "z";
			if( (mask & 0x2) ) p += "y";
			if( (mask & 0x1) ) p += "x";
			return p;
		}
		
	}
}



const COMPS : Vector.<String> = new <String>[
	"x",
	"y",
	"z",
	"w"
];

const VTYPES : Vector.<String> = new <String>[
	"va",
	"vc", 
	"vt", 
	"op",
	"v", 
	null, 
	null
];
const FTYPES : Vector.<String> = new <String>[
	null,
	"fc", 
	"ft", 
	"oc",
	"v", 
	"fs", 
	"od"
];


const TYPES : Vector.<String> = new <String>[
	"a",
	"c", 
	"t", 
	"o",
	"v", 
	"s", 
	"od"
];


const OPS : Vector.<String> = new <String>[
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
