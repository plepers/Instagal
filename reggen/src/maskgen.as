import avmplus.*

const COMPONENTS : Array = ["x", "y", "z", "w"];


const _package : String = "regs";
const outputDir : String = "gen/regs/";

var code0 : uint;
var code1 : uint;
var code2 : uint;
var code3 : uint;

var asStr : String;

var maskStr : String;


for (var i : uint = 0; i <= 0xff; i++) {
	
	code3 = (i>>6)&3;
	code2 = (i>>4)&3;
	code1 = (i>>2)&3;
	code0 = i&3;
	
	
	if( code2 == code3 ) {
		if( code1 == code3 ) {
			if( code0 == code3 ) {
				maskStr = COMPONENTS[code0];
			} else {
				maskStr = COMPONENTS[code0]+COMPONENTS[code1];
			}
		} else {
			maskStr = COMPONENTS[code0]+COMPONENTS[code1]+COMPONENTS[code2];
		}
	} else 
		maskStr = COMPONENTS[code0]+COMPONENTS[code1]+COMPONENTS[code2]+COMPONENTS[code3];
	
	trace( maskStr, i.AS3::toString( 16 ) , (( i^0xE4 )<<16).AS3::toString( 16 ));
	
	asStr = "package "+_package+"{\n";
	asStr += "	public const "+maskStr+" 	: uint = 0x"+(( i^0xE4 )<<16).AS3::toString( 16 )+";\n";
	asStr += "}";
	
	FileSystem.write( outputDir+maskStr+".as", asStr );
	
}