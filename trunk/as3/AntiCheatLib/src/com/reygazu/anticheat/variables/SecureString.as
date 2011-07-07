package com.reygazu.anticheat.variables
{
	public class SecureString
	{
		private var secureData:SecureObject;
		
		public function SecureString()
		{
			secureData = new SecureObject();
		}
		
		public function set value(data:String):void
		{
			secureData.objectValue = data;			
		}
		
		public function get value():String
		{
			return secureData.objectValue as String;
		}
	}
}