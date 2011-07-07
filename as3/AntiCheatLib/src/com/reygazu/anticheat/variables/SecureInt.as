package com.reygazu.anticheat.variables
{
	public class SecureInt
	{
		private var secureData:SecureObject;
		
		public function SecureInt()
		{
			
			secureData = new SecureObject();
		}
		
		public function set value(data:int):void
		{
			secureData.objectValue = data;			
		}
		
		public function get value():int
		{
			return secureData.objectValue as int;
		}
	}
}