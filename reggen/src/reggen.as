import avmplus.*


	
const C_NUM : uint = 128;
const T_NUM : uint = 8;
const V_NUM : uint = 8;
const A_NUM : uint = 8;

const C_TYPE : uint = 1;
const T_TYPE : uint = 2;
const V_TYPE : uint = 4;
const A_TYPE : uint = 0;
const O_TYPE : uint = 3; // op, oc

const _package : String = "regs";
const outputDir : String = "gen/regs/";

const swizzle : uint = (0xE4 << 16);

var i : int;

var asStr : String;
var val : uint;

for( i = 0; i<C_NUM; i++ ) {
	
	val = i + ( C_TYPE << 24 ) + swizzle;
	
	asStr = "package "+_package+"{\n";
	asStr += "	public const c"+i+" 	: uint = 0x"+val.AS3::toString( 16 )+";\n";
	asStr += "}";
	
	FileSystem.write( outputDir+"c"+i+".as", asStr );
};

for( i = 0; i<T_NUM; i++ ) {
	
	val = i + ( T_TYPE << 24 ) + swizzle;
	
	asStr = "package "+_package+"{\n";
	asStr += "	public const t"+i+" 	: uint = 0x"+val.AS3::toString( 16 )+";\n";
	asStr += "}";
	
	FileSystem.write( outputDir+"t"+i+".as", asStr );
};

for( i = 0; i<V_NUM; i++ ) {
	
	val = i + ( V_TYPE << 24 ) + swizzle;
	
	asStr = "package "+_package+"{\n";
	asStr += "	public const v"+i+" 	: uint = 0x"+val.AS3::toString( 16 )+";\n";
	asStr += "}";
	
	FileSystem.write( outputDir+"v"+i+".as", asStr );
};

for( i = 0; i<A_NUM; i++ ) {
	
	val = i + ( A_TYPE << 24 ) + swizzle;
	
	asStr = "package "+_package+"{\n";
	asStr += "	public const a"+i+" 	: uint = 0x"+val.AS3::toString( 16 )+";\n";
	asStr += "}";
	
	FileSystem.write( outputDir+"a"+i+".as", asStr );
};

// OP, OC

val = ( O_TYPE << 24 ) + swizzle;
	
asStr = "package "+_package+"{\n";
asStr += "	public const op 	: uint = 0x"+val.AS3::toString( 16 )+";\n";
asStr += "}";

FileSystem.write( outputDir+"op.as", asStr );

asStr = "package "+_package+"{\n";
asStr += "	public const oc 	: uint = 0x"+val.AS3::toString( 16 )+";\n";
asStr += "}";

FileSystem.write( outputDir+"oc.as", asStr );

