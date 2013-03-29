/*
 * Copyright (C) 2013 Pierre Lepers
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 */
 package com.instagal {
	import apparat.memory.Memory;

	import flash.display3D.Context3DProgramType;
	import flash.system.ApplicationDomain;
	import flash.utils.ByteArray;
	import flash.utils.Endian;

	/**
	 * @author Pierre Lepers
	 * com.lepers.agal.Shader
	 */
	public class Shader extends ShaderChunk {

		public function Shader(type : String, version : uint = 1) {
			super();

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


		public function writeBytes( res : ByteArray ) : void {
			var len : int = _ptr - _memoryBlock.position;
			res.position = 0;
			res.length = len;
			res.writeBytes(ApplicationDomain.currentDomain.domainMemory, _memoryBlock.position, len );

			ShaderChunk.releaseBlock(_memoryBlock);
			_memoryBlock = null;
		}
		
		
		public function complete() : ByteArray {
			var res : ByteArray = new ByteArray();
			res.endian = Endian.LITTLE_ENDIAN;
			res.writeBytes(ApplicationDomain.currentDomain.domainMemory, _memoryBlock.position, _ptr - _memoryBlock.position);

			ShaderChunk.releaseBlock(_memoryBlock);
			_memoryBlock = null;

			return res;
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
 
