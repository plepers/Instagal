import avmplus.*



const C_NUM : uint = 128;
const T_NUM : uint = 8;
const V_NUM : uint = 8;
const A_NUM : uint = 8;
const S_NUM : uint = 8;

const C_TYPE : uint = 1;
const T_TYPE : uint = 2;
const V_TYPE : uint = 4;
const A_TYPE : uint = 0;
//const S_TYPE : uint = 5;// no need
const O_TYPE : uint = 3; // op, oc
const OD_TYPE : uint = 6; // od depth output

const TYPE_SHIFT : uint = 12;

const _package : String = "com.instagal.regs";
const outputDir : String = "gen/com/instagal/regs/";

const swizzle : uint = (0xE4 << 24);


var i : uint, val : uint;

function constClass( name : String, val : uint) : String {
	return 	"package "+_package+"{\n"+
			"	public const "+name+" 	: uint = 0x"+val.AS3::toString( 16 )+";\n"+
			"}";
}

for( i = 0; i<C_NUM; i++ ) {
	
	val = i + ( C_TYPE << TYPE_SHIFT ) + swizzle;
	FileSystem.write( outputDir+"c"+i+".as", constClass( "c"+i , val ) );
};

for( i = 0; i<T_NUM; i++ ) {
	
	val = i + ( T_TYPE << TYPE_SHIFT ) + swizzle;
	FileSystem.write( outputDir+"t"+i+".as", constClass( "t"+i , val ) );
};

for( i = 0; i<V_NUM; i++ ) {
	
	val = i + ( V_TYPE << TYPE_SHIFT ) + swizzle;
	FileSystem.write( outputDir+"v"+i+".as", constClass( "v"+i , val ) );
};

for( i = 0; i<A_NUM; i++ ) {
	
	val = i + ( A_TYPE << TYPE_SHIFT ) + swizzle;
	FileSystem.write( outputDir+"a"+i+".as", constClass( "a"+i , val ) );
};

// Samplers 
for( i = 0; i<S_NUM; i++ ) {
	FileSystem.write( outputDir+"s"+i+".as",  constClass( "s"+i , i ) );
};



// OP, OC

val = ( O_TYPE << TYPE_SHIFT ) + swizzle;
FileSystem.write( outputDir+"op.as", constClass( "op" , val ) );
FileSystem.write( outputDir+"oc.as", constClass( "oc" , val ) );
FileSystem.write( outputDir+"o.as", constClass( "o" , val ) );

val = ( OD_TYPE << TYPE_SHIFT ) + swizzle;
FileSystem.write( outputDir+"od.as", constClass( "od" , val ) ); 


