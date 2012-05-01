package
{
	import com.reygazu.anticheat.events.CheatManagerEvent;
	import com.reygazu.anticheat.managers.CheatManager;
	import com.reygazu.anticheat.variables.SecureInt;
	import com.reygazu.anticheat.variables.SecureUInt;
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class GameExample extends Sprite
	{
		
		private var textFieldA:TextField;
		private var textFieldB:TextField;
		
		private var score:int;
		private var secureScore:SecureInt = new SecureInt('Score');
		
		public function GameExample()
		{
			// init score variables
			score = 0;
			secureScore.value = 0;
			
			// textfields
			textFieldA = new TextField();
			textFieldB = new TextField();
			
			textFieldA.x = 100;
			textFieldA.y = 100;
			
			textFieldB.x = 100;
			textFieldB.y = 150;
			
			this.addChild(textFieldA);
			this.addChild(textFieldB);
			
				
			
			// Button to win points
			
			var button:Sprite = new Sprite();
			button.graphics.beginFill(0xFADE00);
			button.graphics.drawRect(0,0,128,32);
			button.x = 100;
			button.y = 200;
			button.addEventListener(MouseEvent.CLICK,onButtonClick);		
			this.addChild(button);
			
			// onCheatDetection
			CheatManager.getInstance().addEventListener(CheatManagerEvent.CHEAT_DETECTION,onCheatDetected);
			
			
			// update Event to refresh screen
			this.addEventListener(Event.ENTER_FRAME,onEnterFrame);
		}
		
		
		
		
		
		// Event Handlers
		
		private function onButtonClick(evt:MouseEvent):void
		{
			// this will add a 25 points to both variables
			
			//score += 5;
			secureScore.value += 1;
			
		}
		
		private function onEnterFrame(evt:Event):void
		{
			textFieldA.text = "score is : " + score;
			
			textFieldB.text = "secureScore is : " + secureScore.value;
		}
		
		private function onCheatDetected(evt:CheatManagerEvent):void
		{
			var cheaterTextField:TextField = new TextField();
			cheaterTextField.textColor = 0xFF0000;
			cheaterTextField.text = "CHEATER!";
			this.addChild(cheaterTextField);
		}
	}
}