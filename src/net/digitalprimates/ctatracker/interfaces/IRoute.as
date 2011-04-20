package net.digitalprimates.ctatracker.interfaces
{
	public interface IRoute
	{
		function get routeNumber():int;
		function set routeNumber(value:int):void;
		
		function get routeName():String;
		function set routeName(value:String):void;
	}
}