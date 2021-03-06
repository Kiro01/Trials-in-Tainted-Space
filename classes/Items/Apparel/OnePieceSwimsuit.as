package classes.Items.Apparel
{
	import classes.ItemSlotClass;
	import classes.GLOBAL;
	import classes.StringUtil;
	import classes.GameData.TooltipManager;
	
	public class OnePieceSwimsuit extends ItemSlotClass
	{
		public function OnePieceSwimsuit()
		{
			_latestVersion = 1;
			
			quantity = 1;
			stackSize = 1;
			
			type = GLOBAL.CLOTHING;
			
			shortName = "O.Swimsuit";
			
			longName = "one-piece swimsuit";
			
			TooltipManager.addFullName(shortName, StringUtil.toTitleCase(longName));
			
			description = "a black one-piece swimsuit";
			
			tooltip = "A simple, figure-hugging black swimsuit that will cover you from crotch to chest. Gracefully alluring and gets the job done.";
			//tooltip += " Note that this will cover both your upper and lower under-region.";
			tooltip += " Note that this should cover both your upper and lower under-regions, so wearing undergarments with this before a swim is redundant.";
			
			TooltipManager.addTooltip(shortName, tooltip);
			
			attackVerb = "";
			
			basePrice = 700;
			attack = 0;
			defense = 0;
			shieldDefense = 0;
			sexiness = 2;
			critBonus = 0;
			evasion = 0;
			fortification = 0;
			
			itemFlags = [GLOBAL.ITEM_FLAG_SWIMWEAR];
			
			version = _latestVersion;
		}
	}
}
