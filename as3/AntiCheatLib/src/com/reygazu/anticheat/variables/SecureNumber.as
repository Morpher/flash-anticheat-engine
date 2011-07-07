package com.reygazu.anticheat.variables
{
	public class SecureNumber
	{
		private var secureData:SecureObject;
		
		public function SecureNumber()
		{
			secureData = new SecureObject();
		}
		
		public function set value(data:Number):void
		{
			secureData.objectValue = data;			
		}
		
		public function get value():Number
		{
			return secureData.objectValue as Number;
		}
	}
}