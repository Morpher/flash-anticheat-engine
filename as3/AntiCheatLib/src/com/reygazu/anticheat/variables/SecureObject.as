package com.reygazu.anticheat.variables
{
	public dynamic class SecureObject
	{

		private var id:String;
		private var fake:Object;
		
		public function SecureObject()
		{			
			hop();	
		}
		
		public function set objectValue(value:Object):void
		{
			
			// delete the old variable memory location
			if (this.hasOwnProperty(id))
			{
				delete this[id];
			}
			
			// change memory location of variable
			hop();
			// save the variable in the new location
			this[id] = value;
			
			// save the value in a fake var as a decoy. 
			fake = value;
			
		}
		
		public function get objectValue():Object
		{
			return this[id];
		}
	
		private function hop():void
		{
			var _id:String = id;
			
			while (id==_id)
				id = String(Math.round(Math.random()*0xFFFFF));	
		}
			
		
	}
}