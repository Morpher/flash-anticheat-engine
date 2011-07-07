package com.reygazu.anticheat.variables
{
	public class SecureBoolean
	{
		private var secureData:SecureObject;
		
		public function SecureBoolean()
		{
			secureData = new SecureObject();
		}
		
		public function set value(data:Boolean):void
		{
			secureData.objectValue = data;			
		}
		
		public function get value():Boolean
		{
			return secureData.objectValue as String;
		}
	}
}