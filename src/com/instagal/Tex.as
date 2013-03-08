package com.instagal {
	/**
	 * @author plepers
	 */
	public class Tex {
		
		
		public static const D2			  :uint	= 0;			          
		public static const CUBE		  :uint	= 1<<12;
		public static const D3			  :uint	= 2<<12;			          
				      
		public static const NOMIP		  :uint	= 0;	
		public static const MIPNONE		  :uint	= 0;	
		public static const MIPNEAREST	  :uint	= 1<<24;			  
		public static const MIPLINEAR	  :uint	= 2<<24;			  
					      
		public static const NEAREST		  :uint = 0;			      
		public static const LINEAR		  :uint	= 1<<28;			      
		
		public static const CENTROID	  :uint	= 1<<16;			  
		public static const SINGLE		  :uint	= 2<<16;			      
		public static const IGNORESAMPLER :uint	= 4<<16;			
		
		public static const REPEAT		  :uint	= 1<<20;			      
		public static const WRAP		  :uint	= REPEAT;			      
		public static const CLAMP		  :uint	= 0;			      
		
		public static const RGBA		  :uint	= 0;			      
		public static const DXT1		  :uint	= 1<<8;			      
		public static const DXT5		  :uint	= 2<<8;			      
		public static const VIDEO		  :uint	= 3<<8;			      
		
	}
}
