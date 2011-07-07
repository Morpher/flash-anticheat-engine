package com.reygazu.anticheat.variables
{
	public class SecureUInt
	{
		private var secureData:SecureObject;
		
		public function SecureUInt()
		{
			secureData = new SecureObject();
		}
		
		public function set value(data:uint):void
		{
			secureData.objectValue = data;			
		}
		
		public function get value():uint
		{
			return secureData.objectValue as uint;
		}
	}
}