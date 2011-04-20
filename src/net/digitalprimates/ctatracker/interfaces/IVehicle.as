package net.digitalprimates.ctatracker.interfaces
{
	public interface IVehicle
	{
		function get vehicleId():int;
		function set vehicleId(value:int):void;
		
		function get routeId():int;
		function set routeId(value:int):void;
		
		function get timestamp():Date;
		function set timestamp(value:Date):void;
		
		function get heading():int;
		function set heading(value:int):void;
		
		function get destination():String;
		function set destination(value:String):void;
		
		function get pattern():int;
		function set pattern(value:int):void;
		
		function get patternDistance():int;
		function set patternDistance(value:int):void;
	}
}