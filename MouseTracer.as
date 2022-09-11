package {
	import flash.display.*;
	import flash.events.*;

	public class MouseTracer extends MovieClip {
		// DATA MEMBERS
		var friendList: Array = new Array();

		// CONSTRUCTOR
		public function MouseTracer() {
			for (var i: Number = 0; i < 100; i++) {
				var timeToTarget: int = i + 1;

				// SPECIFY THE XY LOCATION
				var positionX = i * 30;
				var positionY: int = 300;

				// INSTANTIATE A BOX, ADD IT TO THE STAGE AND THE LIST
				var myFriend: Friend = new Friend(positionX, positionY, timeToTarget);
				addChild(myFriend);
				friendList.push(myFriend);

				// REGISTER AN EVENT FOR FOLLOWING THE MOUSE
				addEventListener(Event.ENTER_FRAME, followMouse);
			}
		}

		function followMouse(event: Event) {
			for (var i: Number = 0; i < friendList.length; i++) {
				friendList[i].updatePosition(mouseX, mouseY);
				friendList[i].updatePosition(mouseX, mouseY);
			}
		}
	}
}