package com.instagal {

	import flash.system.ApplicationDomain;
	import apparat.inline.__byRef;
	import apparat.memory.Memory;
	import apparat.memory.MemoryBlock;
	import apparat.memory.MemoryPool;

	import flash.display3D.Context3DProgramType;
	import flash.utils.ByteArray;
	import flash.utils.Endian;
	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.Shader
	 */
	public class Shader {
		
		
		
		private var _memoryBlock : MemoryBlock;
		
		private var _ptr : uint;

		public function Shader( type : String, version : uint = 1 ) {
			
			_memoryBlock = Shader.getFreeBlock();
			_ptr = _memoryBlock.position;
			
			Memory.writeByte( MAGIC, _ptr );
			Memory.writeInt( version, ++_ptr );
			Memory.writeByte( TYPEID, _ptr+=4 );
			
			if( type == Context3DProgramType.FRAGMENT )
				Memory.writeByte( FRAGMENT_TYPE, ++_ptr );
			else if( type == Context3DProgramType.VERTEX )
				Memory.writeByte( VERTEX_TYPE, ++_ptr );
			else
				throw new ArgumentError("com.lepers.agal.Shader::Shader() : invalid type [" + type + "]");
			_ptr++;
		}

		public function mov(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.mov(ptr, dest, src);
			_ptr = ptr;
		}

		public function rcp(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.rcp(ptr, dest, src);
			_ptr = ptr;
		}

		public function frc(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.frc(ptr, dest, src);
			_ptr = ptr;
		}

		public function sqt(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.sqt(ptr, dest, src);
			_ptr = ptr;
		}

		public function rsq(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.rsq(ptr, dest, src);
			_ptr = ptr;
		}

		public function log(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.log(ptr, dest, src);
			_ptr = ptr;
		}

		public function exp(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.exp(ptr, dest, src);
			_ptr = ptr;
		}

		public function nrm(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.nrm(ptr, dest, src);
			_ptr = ptr;
		}

		public function sin(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.sin(ptr, dest, src);
			_ptr = ptr;
		}

		public function cos(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.cos(ptr, dest, src);
			_ptr = ptr;
		}

		public function abs(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.abs(ptr, dest, src);
			_ptr = ptr;
		}

		public function neg(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.neg(ptr, dest, src);
			_ptr = ptr;
		}

		public function sat(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.sat(ptr, dest, src);
			_ptr = ptr;
		}

		public function ddx(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.ddx(ptr, dest, src);
			_ptr = ptr;
		}

		public function ddy(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.ddy(ptr, dest, src);
			_ptr = ptr;
		}

		public function ife(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.ife(ptr, dest, src);
			_ptr = ptr;
		}

		public function ine(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.ine(ptr, dest, src);
			_ptr = ptr;
		}

		public function ifg(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.ifg(ptr, dest, src);
			_ptr = ptr;
		}

		public function ifl(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.ifl(ptr, dest, src);
			_ptr = ptr;
		}

		public function sgn(dest : uint, src : uint) : void {
			var ptr : uint = _ptr;
			Agal.sgn(ptr, dest, src);
			_ptr = ptr;
		}

		public function add(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.add(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function sub(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.sub(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function mul(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.mul(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function div(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.div(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function min(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.min(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function max(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.max(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function pow(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.pow(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function crs(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.crs(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function dp3(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.dp3(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function dp4(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.dp4(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function m33(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.m33(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function m44(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.m44(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function m34(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.m34(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function ted(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.ted(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function tex(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.tex(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function sge(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.sge(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function slt(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.slt(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function seq(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.seq(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function sne(dest : uint, src1 : uint, src2 : uint) : void {
			var ptr : uint = _ptr;
			Agal.sne(ptr, dest, src1, src2);
			_ptr = ptr;
		}

		public function kil(dest : uint) : void {
			var ptr : uint = _ptr;
			Agal.kil(ptr, dest);
			_ptr = ptr;
		}

		public function els() : void {
			var ptr : uint = _ptr;
			Agal.els(ptr);
			_ptr = ptr;
		}

		public function eif() : void {
			var ptr : uint = _ptr;
			Agal.eif(ptr);
			_ptr = ptr;
		}

		public function release() : ByteArray {
			var res : ByteArray = new ByteArray();
			res.endian = Endian.LITTLE_ENDIAN;
			res.writeBytes( ApplicationDomain.currentDomain.domainMemory, _memoryBlock.position, _ptr-_memoryBlock.position)
			
			Shader.releaseBlock( _memoryBlock );
			_memoryBlock = null;
			_ptr = 0;
			
			return res;
		}


		public function get ptr() : uint {
			return _ptr;
		}
		
		
		
		//_____________________________________________________________________________
		//																  MemoryPooling
		
		private static const _freeBlocks : Vector.<MemoryBlock> = new Vector.<MemoryBlock>();

		private static function getFreeBlock() : MemoryBlock {
			if( MemoryPool.buffer == null ) 
				MemoryPool.initialize();
			
			if( _freeBlocks.length > 0 ) 
				return _freeBlocks.pop();
			return MemoryPool.allocate( AGAL_TOKENS_ALLOC );
		}

		private static function releaseBlock( block : MemoryBlock ) : void {
			_freeBlocks.push( block );
		}

		
	}
}

const MAGIC : uint = 0xA0;
const TYPEID : uint = 0xA1;

const VERTEX_TYPE : uint = 0;
const FRAGMENT_TYPE : uint = 1;

const AGAL_MAX_TOKENS : uint = 200;
const AGAL_TOKENS_LEN : uint = 192;

const AGAL_TOKENS_ALLOC : uint = AGAL_TOKENS_LEN * AGAL_MAX_TOKENS;
 
