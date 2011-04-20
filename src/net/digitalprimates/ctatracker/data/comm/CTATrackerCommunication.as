package net.digitalprimates.ctatracker.data.comm
{
	public class CTATrackerCommunication
	{
		private const KEY:String = "";
		public function getVehicles():void
		{
			// url -> http://www.ctabustracker.com/bustime/api/v1/getvehicles?key=89dj2he89d8j3j3ksjhdue93j&vid=509,392
		}
		
		public function getRoutes():void
		{
			// url -> http://www.ctabustracker.com/bustime/api/v1/getroutes?key=89dj2he89d8j3j3ksjhdue93j
		}
		
		public function getResponse():XML
		{
			
		}
		
		public function CTATrackerCommunication()
		{
		}
	}
}