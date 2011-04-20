package net.digitalprimates.ctatracker.data
{
	import net.digitalprimates.ctatracker.interfaces.IRoute;
	
	public class Route implements IRoute
	{
		private var _routeName:String;
		private var _routeNumber:int;
		
		public function Route()
		{
		}
		
		public function get routeNumber():int
		{
			return 0;
		}
		
		public function set routeNumber(value:int):void
		{
			_routeNumber = value;
		}
		
		public function get routeName():String
		{
			return null;
		}
		
		public function set routeName(value:String):void
		{
			_routeName = value;
		}
	}
}