package net.digitalprimates.ctatracker.components
{
	
	import net.digitalprimates.ctatracker.data.models.RouteService;
	
	import spark.components.supportClasses.SkinnableComponent;
	
	
	
	public class RouteLister extends SkinnableComponent
	{
		private var _routeService:RouteService;
		public function RouteLister()
		{
			super();
			_routeService = RouteService.getInstance();
			
		}
		
		override protected function getCurrentSkinState():String
		{
			return super.getCurrentSkinState();
		} 
		
		override protected function partAdded(partName:String, instance:Object) : void
		{
			super.partAdded(partName, instance);
		}
		
		override protected function partRemoved(partName:String, instance:Object) : void
		{
			super.partRemoved(partName, instance);
		}
		
	}
}