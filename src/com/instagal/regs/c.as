package com.instagal.regs {
	/**
	 * @author plepers
	 */
	public function c( reg : uint ) : uint {
		return ( 
			( 
				( ( reg >>> 24 ) & 0xC0 ) | 
				( ( reg >>> 4 ) & 0xF00 ) |
				( ( reg & 0xFFF ) << 17 )  
			) | 
			0xE4011000
		);
	}
}
