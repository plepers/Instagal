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
	/**
	 * @author Pierre Lepers
	 */
	public class Tex {
		
		
		public static const D2			  :uint	= 0;			          
		public static const CUBE		  :uint	= 1<<16;
		public static const D3			  :uint	= 2<<16;			          
				      
		public static const NOMIP		  :uint	= 0;	
		public static const MIPNONE		  :uint	= 0;	
		public static const MIPNEAREST	  :uint	= 1<<26;			  
		public static const MIPLINEAR	  :uint	= 2<<26;			  
					      
		public static const NEAREST		  :uint = 0;			      
		public static const LINEAR		  :uint	= 1<<29;			      
		
		public static const CENTROID	  :uint	= 1<<19;			  
		public static const SINGLE		  :uint	= 2<<19;			      
		public static const IGNORESAMPLER :uint	= 4<<19;			
		
		public static const REPEAT		  :uint	= 1<<23;			      
		public static const WRAP		  :uint	= REPEAT;			      
		public static const CLAMP		  :uint	= 0;			      
		
		public static const RGBA		  :uint	= 0;			      
		public static const DXT1		  :uint	= 1<<13;			      
		public static const DXT5		  :uint	= 2<<13;			      
		public static const VIDEO		  :uint	= 3<<13;

		public static function bias( bias : Number ) : uint {
			return ( bias*8.0 )<<5;
		}
		      
		
	}
}
