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

		public function Shader(type : String, version : uint = 1) {
			_memoryBlock = Shader.getFreeBlock();
			_ptr = _memoryBlock.position;

			Memory.writeByte(MAGIC, _ptr);
			Memory.writeInt(version, ++_ptr);
			Memory.writeByte(TYPEID, _ptr += 4);

			if ( type == Context3DProgramType.FRAGMENT )
				Memory.writeByte(FRAGMENT_TYPE, ++_ptr);
			else if ( type == Context3DProgramType.VERTEX )
				Memory.writeByte(VERTEX_TYPE, ++_ptr);
			else
				throw new ArgumentError("com.lepers.agal.Shader::Shader() : invalid type [" + type + "]");
			_ptr++;
		}

		public function mov(dest : uint, src : uint) : void {
			Agal.mov(__byRef(this._ptr), dest, src);
		}

		public function rcp(dest : uint, src : uint) : void {
			Agal.rcp(__byRef(this._ptr), dest, src);
		}

		public function frc(dest : uint, src : uint) : void {
			Agal.frc(__byRef(this._ptr), dest, src);
		}

		public function sqt(dest : uint, src : uint) : void {
			Agal.sqt(__byRef(this._ptr), dest, src);
		}

		public function rsq(dest : uint, src : uint) : void {
			Agal.rsq(__byRef(this._ptr), dest, src);
		}

		public function log(dest : uint, src : uint) : void {
			Agal.log(__byRef(this._ptr), dest, src);
		}

		public function exp(dest : uint, src : uint) : void {
			Agal.exp(__byRef(this._ptr), dest, src);
		}

		public function nrm(dest : uint, src : uint) : void {
			Agal.nrm(__byRef(this._ptr), dest, src);
		}

		public function sin(dest : uint, src : uint) : void {
			Agal.sin(__byRef(this._ptr), dest, src);
		}

		public function cos(dest : uint, src : uint) : void {
			Agal.cos(__byRef(this._ptr), dest, src);
		}

		public function abs(dest : uint, src : uint) : void {
			Agal.abs(__byRef(this._ptr), dest, src);
		}

		public function neg(dest : uint, src : uint) : void {
			Agal.neg(__byRef(this._ptr), dest, src);
		}

		public function sat(dest : uint, src : uint) : void {
			Agal.sat(__byRef(this._ptr), dest, src);
		}

		public function ddx(dest : uint, src : uint) : void {
			Agal.ddx(__byRef(this._ptr), dest, src);
		}

		public function ddy(dest : uint, src : uint) : void {
			Agal.ddy(__byRef(this._ptr), dest, src);
		}

		public function ife(dest : uint, src : uint) : void {
			Agal.ife(__byRef(this._ptr), dest, src);
		}

		public function ine(dest : uint, src : uint) : void {
			Agal.ine(__byRef(this._ptr), dest, src);
		}

		public function ifg(dest : uint, src : uint) : void {
			Agal.ifg(__byRef(this._ptr), dest, src);
		}

		public function ifl(dest : uint, src : uint) : void {
			Agal.ifl(__byRef(this._ptr), dest, src);
		}

		public function sgn(dest : uint, src : uint) : void {
			Agal.sgn(__byRef(this._ptr), dest, src);
		}

		public function add(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.add(__byRef(this._ptr), dest, src1, src2);
		}

		public function sub(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.sub(__byRef(this._ptr), dest, src1, src2);
		}

		public function mul(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.mul(__byRef(this._ptr), dest, src1, src2);
		}

		public function div(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.div(__byRef(this._ptr), dest, src1, src2);
		}

		public function min(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.min(__byRef(this._ptr), dest, src1, src2);
		}

		public function max(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.max(__byRef(this._ptr), dest, src1, src2);
		}

		public function pow(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.pow(__byRef(this._ptr), dest, src1, src2);
		}

		public function crs(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.crs(__byRef(this._ptr), dest, src1, src2);
		}

		public function dp3(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.dp3(__byRef(this._ptr), dest, src1, src2);
		}

		public function dp4(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.dp4(__byRef(this._ptr), dest, src1, src2);
		}

		public function m33(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.m33(__byRef(this._ptr), dest, src1, src2);
		}

		public function m44(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.m44(__byRef(this._ptr), dest, src1, src2);
		}

		public function m34(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.m34(__byRef(this._ptr), dest, src1, src2);
		}

		public function ted(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.ted(__byRef(this._ptr), dest, src1, src2);
		}

		public function tex(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.tex(__byRef(this._ptr), dest, src1, src2);
		}

		public function sge(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.sge(__byRef(this._ptr), dest, src1, src2);
		}

		public function slt(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.slt(__byRef(this._ptr), dest, src1, src2);
		}

		public function seq(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.seq(__byRef(this._ptr), dest, src1, src2);
		}

		public function sne(dest : uint, src1 : uint, src2 : uint) : void {
			Agal.sne(__byRef(this._ptr), dest, src1, src2);
		}

		public function kil(dest : uint) : void {
			Agal.kil(__byRef(this._ptr), dest);
		}

		public function els() : void {
			Agal.els(__byRef(this._ptr));
		}

		public function eif() : void {
			Agal.eif(__byRef(this._ptr));
		}

		public function release() : ByteArray {
			var res : ByteArray = new ByteArray();
			res.endian = Endian.LITTLE_ENDIAN;
			res.writeBytes(ApplicationDomain.currentDomain.domainMemory, _memoryBlock.position, _ptr - _memoryBlock.position);

			Shader.releaseBlock(_memoryBlock);
			_memoryBlock = null;
			_ptr = 0;

			return res;
		}

		public function get ptr() : uint {
			return _ptr;
		}

		// _____________________________________________________________________________
		// MemoryPooling
		private static const _freeBlocks : Vector.<MemoryBlock> = new Vector.<MemoryBlock>();

		private static function getFreeBlock() : MemoryBlock {
			if ( MemoryPool.buffer == null )
				MemoryPool.initialize();

			if ( _freeBlocks.length > 0 )
				return _freeBlocks.pop();
			return MemoryPool.allocate(AGAL_TOKENS_ALLOC);
		}

		private static function releaseBlock(block : MemoryBlock) : void {
			_freeBlocks.push(block);
		}
	}
}

const MAGIC : uint = 0xA0;
const TYPEID : uint = 0xA1;

const VERTEX_TYPE : uint = 0;
const FRAGMENT_TYPE : uint = 1;

const AGAL_MAX_TOKENS : uint = 1024;
const AGAL_TOKENS_LEN : uint = 192;

const AGAL_TOKENS_ALLOC : uint = AGAL_TOKENS_LEN * AGAL_MAX_TOKENS;
 
