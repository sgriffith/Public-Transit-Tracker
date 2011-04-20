package net.digitalprimates.ctatracker.data.models
{
	import mx.collections.ArrayList;
	import mx.collections.XMLListCollection;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	import net.digitalprimates.ctatracker.data.Route;

	public class RouteService extends HTTPService
	{
		public static const ROUTES_CHANGED:String = 'routesChanged';
		public static const ROUTES_LOADING_ERROR:String = 'routesLoadError';
		private static var _instance:RouteService;		
		private var _routes:ArrayList;
		
		private const KEY:String = "X4JDCNd4YebSyJBmhV2kgHJAv"
		private const ROUTE_URL:String = "http://www.ctabustracker.com/bustime/api/v1/getroutes";
		
		public static function getInstance(rootUrl:String=null, destination:String=null):RouteService
		{
			if(!_instance)
			{
				_instance = new RouteService(new SingletonEnforcer(), rootUrl, destination);
				_instance.initialize();
			}
			return _instance;
		}
		
		protected function initialize():void
		{
			
			this.resultFormat = "e4x";
			this.url = ROUTE_URL;
			addEventListener(ResultEvent.RESULT, handleRouteInformationResult);
			var _key:Object = new Object();
			_key.key = this.KEY;
			this.send(_key);
		}
		
		protected function handleRouteInformationResult( event:ResultEvent ):void
		{
			var routeXML:XML = XML(event.result);
			var routes:Route;
			var newRoutes:ArrayList = new ArrayList();
			
			for each(var node:XML in routeXML.children())
			{
				routes = new Route();
			}
			//_routes = new XMLListCollection( event.result );	
		}
		
		public function RouteService(instance:SingletonEnforcer, rootUrl:String, destination:String)
		{
			super(rootUrl, destination);
		}
	}	

}
class SingletonEnforcer{
	
}