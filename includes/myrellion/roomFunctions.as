﻿import classes.Characters.PlayerCharacter;
//Landing on Myrellion, First Time
public function myrellionHangarBonus():Boolean
{
	if(flags["MYRELLION_PROBE_CASH_GOT"] == undefined && flags["BEAT_TAIVRA_TIMESTAMP"] != undefined) 
	{
		probeReclamationShit();
		return true;
	}
	if(pc.hasStatusEffect("Myr Venom Withdrawal") && rand(10) == 0)
	{
		sluttyMcSlutOral();
		return true;
	}
	// KQ2 Entry Proc
	if (tryProcKQuest2Entry())
	{
		return true;
	}
	//Procs at the ship
	if(!pc.hasKeyItem("Panties - Emmy's - Silky, purple, and cum-stained.") && flags["EMMY_QUEST"] >= 6 && flags["EMMY_QUEST"] != undefined){
		emmysPantiesGet();
		return true;
	}
	
	return false;
}

public function airFieldNorthBonus():Boolean
{
	if(flags["SEXED_SHADE"] != undefined && shadeAtTheBar())
	{
		output(" You recognize Shade's ship, a purple MS-XI with \"Mirage\" painted in bold white letters across its bow, parked next to one of the hangers here.")
	}
	if(pc.hasStatusEffect("Myr Venom Withdrawal") && rand(10) == 0)
	{
		sluttyMcSlutOral();
		return true;
	}
	return false;
}

public function DMZRandoEventsBonus():Boolean
{
	if(pc.hasStatusEffect("Myr Venom Withdrawal") && rand(10) == 0)
	{
		sluttyMcSlutOral();
		return true;
	}
	return false;
}

public function flyToMyrellion():void
{
	if(flags["VISITED_MYRELLION"] == undefined)
	{
		author("Savin");
		showBust("MYR_GOLD_PILOT");
		showName("MYR\nESCORT");
		output("You guide your vessel into the space around Myrellion, the only inhabited planet in the system. While most planets in the Rush are magnets for explorers and pioneers, this is the first world where you've seen warships in orbit: your sensors pick up a small battle group of Ausar Federation and Terran-Space Coalition ships holding in high orbit: a cursory glance says that their shields are up and their weapons are locked on the planet below.");
		output("\n\nYour shipboard computer automatically syncs with the U.G.C. Scout Authority beacon hanging in the atmosphere as you glide down towards the surface. A warning appears on screen:\n\n<i>Notice: the Myrellion System has been flagged as Extremely Dangerous to civilians. There is a high risk of bodily harm or death while exploring this world, especially beyond the U.G.C. embassy on the surface. Your safety cannot be guaranteed beyond the planet's atmosphere.</i>");
		output("\n\nWhat's going on here? You let the autopilot guide you down towards the surface, homing in on the embassy you've been told to go to. As you start to near it, your sensors bleep an urgent warning: <i>several unidentified aircraft incoming!</i> You glance at your display, watching a half-dozen bogies zip towards you from behind. You're about to power up weapons when your emergency radio beeps.");
		output("\n\nMost pilots go their whole careers without ever actually getting an old-fashioned radio transmission. Nobody even uses these things anymore... so what the hell? You pick up.");
		output("\n\n<i>“Unidentified offworld aircraft,”</i> a female voice says over the radio, difficult to hear over an incredible amount of background noise. <i>“This is Cadence Squadron. We’ll be guiding you into the embassy airfield. Please follow us.”</i>");
		output("\n\nAs she’s speaking, the aircraft finally come into view around your ship: they’re... they’re old prop-rotor airplanes, not even starfighters. Hell, they’re not much more than biplanes with machine guns strapped to the open cockpits. The planes fall in around you, forcing you to slow to a veritable crawl to keep from crashing into them; one of the planes comes almost level with your cockpit, and the pilot gives you a friendly wave from one of her four arms. You blink as you see a pair of large, insectile antenna whipping in the wind over her head, poking out from an old-school aviator’s cap.");
		output("\n\nYou take manual control of your ship for the last few minutes, following the biplane squadron down and across the heat-blasted red rock of the planet, and towards what looks like an airfield in the distance. That turns out to be exactly what it is, you see as you near it: an exceptionally large airport whose planes have mostly been pushed aside or hangared, giving way to a handful of pioneer-looking starships, freighters, and military transports from the battle group in orbit.");
		output("\n\nYou’re allowed to break off from the planes once you reach the airfield, guiding your ship in a simple vertical landing as the biplanes make use of the one clear runway left. You park your ship, collect your gear, and punch the boarding ramp down. You’re quickly greeted by a group of armed women, all four-armed, antenna-bearing, and abnormally busty beauties clad in military uniforms. ");
		output("\n\nYour codex beeps: <i>Myr sighted. This ant-like species comes in two varieties, both highly civilized if not technologically advanced. Currently considered ‘tentatively peaceful’ by the Scout Authority. Two entries added for your perusal.</i>");

		output("\n\nYou stow the device when a few of the women nervously point their weapons - old fashioned lever-actions - at you. A few tense moments later, though, the pilot that waved at you saunters up with a slight grin, nodding for the guards to lower their weapons.");

		output("\n\n<i>“Welcome to Myrellion, offworlder,”</i> she says, giving you a slight nod. Two of her arms point toward the largest of the hangers as she says, <i>“Please check in with your government’s embassy there. They’ll brief you and get you cleared to go through to the cities.”</i>");

		output("\n\n<i>“Cities?”</i> you ask. <i>“I didn’t see any on the way in.”</i>");

		output("\n\nShe chuckles. <i>“Myr build underground. You’re standing on top of the Gold Myr capital, Gildenmere. The elevator access is just through the embassy - we’ll see you down below.”</i>");

		output("\n\nWith that, she gives a signal to the guards, who follow her away towards another hangar building.");

		output("\n\nWell, this is certainly different.");
		
		flags["VISITED_MYRELLION"] = 1;
		
		generateMapForLocation(currentLocation);
		processTime(5);
	}
	else if(!myrellionLeaveShip())
	{
		output("Flying to Myrellion is no quick jaunt down the road--however, this time, there are no myr biplanes to guide you. In fact, the sky is thick with dark clouds and the ground below seems completely deserted, almost spookily... like a land comprised of ghosts. It is hard to make out the hangar with all the dirt and debris in the air, but your guiding instruments help you with that.");
		output("\n\nAfter making sure you are docked properly, you prepare your things and head towards the airlock--but suddenly, your ship’s radioactivity alarms start blaring, causing you to freeze instantaneously. The planet has been glassed and is surrounded by several levels of radiation. How you even ended up here is anyone’s guess, but you probably shouldn’t leave your ship to venture off into a nuclear wasteland if you know what’s good for you...");
		
		if(flags["KQ2_MYRELLION_STATE"] == undefined)
		{
			if (!reclaimedProbeMyrellion())
			{
				flags["KQ2_MYRELLION_STATE"] = 1;
				if(flags["KQ2_DANE_COORDS_TIMER"] == undefined) flags["KQ2_DANE_COORDS_TIMER"] = GetGameTimestamp();
			}
			else if(flags["KING_NYREA"] != undefined) flags["KQ2_MYRELLION_STATE"] = 2;
		}
	}
	else
	{
		showBust("MYR_GOLD_PILOT");
		showName("MYR\nESCORT");
		output("Flying to Myrellion is no quick jaunt down the road, but before you know it, you're guiding your ship back through the atmosphere for a flawless landing on the tarmac, escorted by a squadron of myr pilots in old-timey biplanes.");
		output("\n\nAfter making sure you are docked properly, you prepare your things");
		if(leaveShipOK()) output(" and step out of your ship.");
	}
	//A quick catch-all. The intro used to unlock the "Myrmedion" codex.
	//This check ensures older save files will re-unlock the relevant entries.
	CodexManager.unlockEntry("Red Myr");
	CodexManager.unlockEntry("Gold Myr");
	CodexManager.unlockEntry("Scarlet Federation");
}

public function myrellionLeaveShip():Boolean
{
	if(flags["KQ2_NUKE_EXPLODED"] != undefined)
	{
		currentLocation = "SHIP INTERIOR";
		setNavDisabled(NAV_OUT_DISABLE);
		return false;
	}
	return true;
}

public function streetOutsideBarBonus():Boolean
{
	if (karaQuestTurninNeeded()) output(" <b>Kara's standing in a dark alley down at the end of the street to the south, almost out of sight.</b>");
	
	if(karaAndShadeUnfinished())
	{
		lastChanceForHelpingKara();
		return true;
	}
	
	if (!mcallisterIsIn())
	{
		output("\n\nA sign has been posted outside the Xenogen outpost, reading in big, bold red letters: THE DOCTOR IS <i><b>OUT</b></i>!");
	}
	if(pc.hasStatusEffect("Myr Venom Withdrawal") && rand(10) == 0)
	{
		sluttyMcSlutOral();
		return true;
	}

	return false;
}
public function spacersRowBonusFunc():Boolean
{
	if(karaQuestTurninNeeded()) output(" <b>where Kara is hiding</b>");
	output(".");
	if(pc.hasStatusEffect("Myr Venom Withdrawal") && rand(10) == 0)
	{
		sluttyMcSlutOral();
		return true;
	}
	return false;
}
public function backAlleyBonus():Boolean
{
	if(karaQuestTurninNeeded()) 
	{
		meetUpWithKaraInTheBackAlley();
		return true;
	}
	else output(" Not much to see here.");
	if(pc.hasStatusEffect("Myr Venom Withdrawal") && rand(10) == 0)
	{
		sluttyMcSlutOral();
		return true;
	}
	return false;
}

public function myrellionScoutAuthorityBonus():Boolean
{
	showBust("ANTRIAS");
	addButton(0,"Approach",approachAntrias);
	return false;
}

//[Scout] (PC hasn't fixed any comm arrays)
public function approachAntrias():void
{
	clearOutput();
	showBust("ANTRIAS");
	author("Savin");
	if(!myrellionTaxiUnlocked())
	{
		output("You step up to the desk and get the man’s attention. He blinks at you. <i>“Sorry, friend, we’re just getting set up here. No comm buoys are online yet, I’m afraid. Haven’t managed to bring in the drill-shot probes to do it properly. Come back later, yeah?”</i>");
		output("\n\n<i>“Ah. Sorry to bother you,”</i> you say, turning to leave.");
		output("\n\n<i>“Hey, if you manage to find any old communications arrays, even basic local tech, try and bring it online. Every little bit helps, ya know.”</i>");
		clearMenu();
		addButton(14,"Back",mainGameMenu);
	}
	//[Scout] (PC has fixed 1+ array)
	else
	{
		output("<i>“Ho there, what can I do for you?”</i> the man asks, sitting up straight as you approach. <i>“Comm arrays are coming online in places we can get you, so where do you want to go, friend? <b>Only 150 credits a trip!</b>”</i>");
		//{Destination -- 150 Credits}
		myrellionTaxiMenu();
	}
}
public function myrellionTaxiMenu():void
{
	clearMenu();
	if(currentLocation == "610") addDisabledButton(0,"ScoutAuth.","Scout Authority","You're already at the scout authority!");
	else
	{
		if(pc.credits >= 150) addButton(0,"ScoutAuth.",takeATransPortMyrellion,"610","Scout Authority","Spend 150 credits to go back to the scout authority in the DMZ.");
		else addDisabledButton(0,"ScoutAuth.","Scout Authority","You can't afford the taxi fee.");
	}
	if(currentLocation == "1L18") addDisabledButton(1,"NoMyr'sLand","No Myr's Land","You're already at that taxi stop.");
	else
	{
		if(flags["NO_ANTS_LAND_TAXI_UNLOCKED"] == undefined) addDisabledButton(1,"NoMyr'sLand","No Myr's Land","You haven't unlocked the comm array in no myr's land yet.");
		else
		{
			if(pc.credits >= 150) addButton(1,"NoMyr'sLand",takeATransPortMyrellion,"1L18","No Myr's Land","Spend 150 credits to go to no myr's land.");
			else addDisabledButton(1,"NoMyr'sLand","No Myr's Land","You can't afford the taxi fee.");
		}
	}
	if(currentLocation == "2I7") addDisabledButton(2,"Deep Caves","Deep Caves","You're already at the deep caves taxi beacon!");
	else
	{
		if(flags["DEEP_CAVES_TAXI_UNLOCKED"] == undefined) addDisabledButton(2,"Deep Caves","Deep Caves","You haven't unlocked the comm array in the deep caves yet.");
		else
		{
			if(pc.credits >= 150) addButton(2,"Deep Caves",takeATransPortMyrellion,"2I7","Deep Caves","Spend 150 credits to go to the deep caves.");
			else addDisabledButton(2,"Deep Caves","Deep Caves","You can't afford the taxi fee.");
		}
	}
	addButton(14,"Leave",mainGameMenu);
}

public function myrellionTaxiUnlocked():Boolean
{
	return (flags["NO_ANTS_LAND_TAXI_UNLOCKED"] != undefined || flags["DEEP_CAVES_TAXI_UNLOCKED"] != undefined);
}

public function takeATransPortMyrellion(arg:String = ""):void
{
	clearOutput();
	author("Savin");
	//Leaving scout authority.
	if(currentLocation == "610")
	{
		showBust("ANTRIAS");
		output("<i>“Alright. I’ll upload the coordinates to one of the transports. Just swipe your credit stick here and head out back.”</i>");
		output("\n\nYou do so, transferring your payment to the Scout Authority and walking out into the back lot behind the structure. Several small hover-cars are arrayed there, all jungle-patterned and manned by simplistic drone pilots. One of them hails you with a wave of its mechanical arm. You slip into the car, and a moment later you’re on your way, zipping across the blasted surface of Myrellion, towards one of the subterranean entrances you need.");
		output("\n\nNot long after, you arrive at your destination, a large crack in the ground allowing entrance. Carefully, your drone pilot lowers the car down into the blackness of Myrellion’s heart. You have to take a jump out, though, dropping down the last few feet into the uneven ground. The hover-car zips away a minute later, leaving you behind.");
	}
	//Deep caves -> scout authority
	else if(currentLocation == "2I7" && arg == "610")
	{
		output("You send a databurst to the local Scout Authority base, requesting a shuttle pickup. It only takes a few minutes for the shuttle to arrive, slipping precariously through the crack in the cavern ceiling and puttering down to your level. The door pops open and the robot driver inside beckons you in; moments later you're racing through the desert skyline over Myrellion, headed back to the DMZ.\n\nYou're dropped off just behind the Scout office, and make your way inside.");
	}
	//Anything else
	else
	{
		output("You send a databurst to the Scout Authority, requesting transit. You receive what amounts to a Morse code affirmation over the radio in return, and spend the next few minutes waiting for your ride.");
		output("\n\nThe robot-driven shuttle dives down through the crack in the roof quickly enough, parking just outside with open doors. You hop aboard and zoom off to your destination. If only it didn't cost you 150 credits for the luxury of it all.");
	}
	pc.credits -= 150;
	currentLocation = arg;
	generateMapForLocation(currentLocation);
	processTime(25);
	clearMenu();
	addButton(0,"Next",mainGameMenu);
}

//No Man's Land Beacon - 1L18
//Place somewhere roughly equidistant between Gildenmere and Kressia, and nearish to the entrance to the Deep Caves. 
public function noAntsLandBeaconBonus():Boolean
{
	author("Savin");
	//Room Descript
	output("What could have been a small military bunker sits here, tucked away almost imperceptibly against the far wall of the cavern. The only reason you'd notice it at all is the huge tear in the earth overhead, letting in beams of sunlight which reveal the pillbox's firing port, now devoid of armament. There's no indication of who built it or why its been abandoned, but a quick look inside reveals a beat up old radio sitting against a back wall, hooked up to several wires that lead all the way up to the surface.");
	if(flags["NO_ANTS_LAND_TAXI_UNLOCKED"] == undefined)
	{
		output(" You might be able to use your Codex to tune it into the Scout's comm network and set up a taxi beacon here.");
		addButton(0,"Fix Radio",repairRadio);
	}
	else 
	{
		output(" The radio is currently beeping rhythmically, sending coordinates to and fro the Scout base at the DMZ.");
		addButton(0,"Taxi",callATaxiYeScrub,undefined,"Taxi","Call a taxi, though you'll pay 150 credits for the convenience.");
	}
	if(flags["LOOTED_MYR_RIFLE"] == undefined) addButton(1,"Search",searchDatBunker,undefined,"Search","Spend a little time scavenging. Maybe there's something worthwhile here?");
	else if(flags["LOOTED_MYR_RIFLE"] == 0) addButton(1,"Rifle",searchDatBunker,undefined,"Rifle","Take the old rifle.");
	else addDisabledButton(1,"Search","Search","You've already searched this location.");
	//[Repair Radio] [Search]
	return false;
}

//[Repair Radio]
public function repairRadio():void
{
	clearOutput();
	author("Savin");
	showName("\nTINKERING");
	output("You do a little basic techno-wizardry: using your Codex to look up the Scout Authority's emergency radio frequency, tuning the radio to it, and sending a databurst from your Codex to the computer at the DMZ. You should be able to bring in a taxi drone now - assuming somebody at the Scouts knows how to read morse code in this day and age.");
	processTime(3);
	flags["NO_ANTS_LAND_TAXI_UNLOCKED"] = 1;
	clearMenu();
	addButton(0,"Next",mainGameMenu);
}

//[Call Taxi] //or whatever
public function callATaxiYeScrub():void
{
	clearOutput();
	author("Savin");
	showName("HAILING\nA CAB");
	output("You crank up the old radio equipment. Before you send a request, where did you want to go? <b>Just 150 credits!</b>");
	myrellionTaxiMenu();
}

//[Search] (One time only)
public function searchDatBunker():void
{
	clearOutput();
	if(flags["LOOTED_MYR_RIFLE"] == undefined)
	{
		author("Savin");
		showName("\nSEARCHING...");
		output("You spend a few minutes poking around in the old bunker, looking for anything salvageable. The place is an absolute wreck, and the closer you look, the more you realize why: there are scorch marks all along the entrance chambers, and several bullet holes in the concrete. This place has seen its share of action, and you'd imagine some of that involved a flamethrower. You do find one piece of equipment still intact, though: buried underneath a bit of collapsed roof, you're able to dig out a beat up old rifle. Looks like it's been sat here for months if not years, but with a little cleaning, it might still work.\n\n");
		processTime(18);
	}
	flags["LOOTED_MYR_RIFLE"] = 1;
	var rifle:MyrRifle = new MyrRifle();
	lootScreen = searchBunkerRifleCheck;
	itemCollect([rifle]);
}
public function searchBunkerRifleCheck():void
{
	if(pc.rangedWeapon is MyrRifle || pc.hasItemByType(MyrRifle))
	{
		mainGameMenu();
		return;
	}
	
	clearOutput();
	output("You put the rifle back where you found it.");
	
	flags["LOOTED_MYR_RIFLE"] = 0;
	clearMenu();
	addButton(0, "Next", mainGameMenu);
}

public function myrellionUndergroundCrashSiteBonus():Boolean
{
	if (flags["KQ2_MYRELLION_STATE"] == 2)
	{
		// Ship Location Hotfix
		if(shipLocation != currentLocation && currentLocation == "2I7" && rooms["2I7"].hasFlag(GLOBAL.SHIPHANGAR)) shipLocation = "2I7";
		
		output(" The beacon sits silent, an ominious red glow flashing across its top like a metronome.");
		return false;
	}
	
	if(flags["DEEP_CAVES_TAXI_UNLOCKED"] == undefined) 
	{
		output("\n\nStill, it seems functional enough. You could probably activate it, setting up a taxi pick-up point.");
		addButton(0,"Activate",repairBeacon,undefined,"Activate","Get the old beacon working again.");
	}
	else 
	{
		output(" The beacon is beeping softly, ready to be used to send a message to the Scouts' taxi service.");
		addButton(0,"Taxi",callATaxiYeScrub,undefined,"Taxi","Call a taxi, though you'll pay 150 credits for the convenience.");
	}
	return false;
}

//[Repair Beacon]
public function repairBeacon():void
{
	clearOutput();
	output("You give the beacon a kick, and it buzzes to life. That was easy. Should be able to call in a taxi from here, now, thanks to the fuck-off huge hole it made landing here.");
	flags["DEEP_CAVES_TAXI_UNLOCKED"] = 1;
	processTime(4);
	clearMenu();
	addButton(0,"Next",mainGameMenu);
}

public function kressiaGatesBonus():Boolean
{
	if (tryProcLateGoodbye())
	{
		return true;
	}
	
	if(flags["MET_LIEVE"] == undefined) output(" from which can be heard a series of very soft moans and giggles");
	else output(" and you can hear Lieve having a bit of fun inside");
	output(".");

	//first time:
	if(flags["LIEVE_INVITE"] == undefined)
	{
		output("\n\nAs you're passing by, a young woman with short, almost punkish purple hair pokes her head out of firing port. \"<i>Hey you!</i>\" she calls, \"<i>Come talk to me if you're going out there. You don't want to be heading into the trenches blind.</i>\"");
		output("\n\nBefore you can answer, she pops back into the bunker, pulled in by a pair of gold-chitined hands. Giggles echo out through the port after her.");
		flags["LIEVE_INVITE"] = 1;
	}
	
	return false;
}
public function n20StreetBonusFunc():Boolean
{
	if(pc.characterClass == GLOBAL.CLASS_ENGINEER) output(" You'd be tempted to offer to help if you had any idea what the hell that behemoth even is.");
	return false;
}

public function kressiaAirfieldBonus():Boolean
{
	output("\n\nA red myr trooper checks your papers and identification again before waving you through the checkpoint and telling you to hurry aboard if you want to go to the DMZ where your ride is parked.");
	addButton(0,"Enter Plane",aeroplaneFlightShit,false,"Enter Plane","Hop on a plane for a quick trip back to the DMZ.");
	return false;
}

public function myrellionSecurityCheckpointEvents():Boolean
{
	if (findKaedeOnMyrellion()) return true;
	return false;
}

public function DMZKressiaAirstrip():Boolean
{
	if(!pc.hasKeyItem("Kressia Pass")) {
		output("\n\nYou'll need clearance to visit Kressia before you can depart. You should check with the red myr diplomat on station.")
	}
	else
	{
		output("\n\nA red myr trooper checks your papers and identification again before waving you through the checkpoint and telling you to hurry aboard if you want to go to Kressia, the closest of the Red's cities.");
		addButton(0,"Enter Plane",aeroplaneFlightShit,true,"Enter Plane","Hop on a plane for a quick trip to Kressia.");
	}
	if(pc.hasStatusEffect("Myr Venom Withdrawal") && rand(10) == 0)
	{
		sluttyMcSlutOral();
		return true;
	}
	return false;
}

public function aeroplaneFlightShit(kressia:Boolean = true):void
{
	clearOutput();
	//Intro to Kressia via Aeroplane
	if(kressia)
	{
		output("The plane ride is short, but bumpy. You");
		if(flags["RODE_AIRPLANE"] == undefined)
		{
			output("'ve never ridden on an old-school airplane before");
			flags["RODE_AIRPLANE"] = 1;
		}
		else output("'ll never get used to these old-school airplanes");
		output(". The plane rocks and shudders seemingly at random, making you and every ant-girl aboard sway uneasily. Engines roar deafeningly outside, and your [pc.ears] keep popping with the random changes in pressure. A couple of times, other passengers get visibly ill, and go for small paper bags tucked in the seats ahead of them.");
		output("\n\nYou mumble a curse for the red myr not having a spaceport of their own and put a hand to your own stomach, trying not to puke too. Miserable things, these old planes. Absolutely miserable...");
		output("\n\nIt's a blessed relief when the plane lands, even if you're nearly certain the bucket of bolts with rattle itself apart when it skids down the runway. But finally, the ride comes to an end and the plane's crew chief kicks the ramp down, letting you and the other passengers shuffle off.");
		currentLocation = "800";
		generateMapForLocation(currentLocation);
	}
	//[Next]
	//Intro to DMZ via Aeroplane
	//Add [To DMZ] to airfield
	else
	{
		output("You hop onto a diplomatically-marked plane idling on the runway, bound for the Demilitarized Zone deep in Republic territory. It's only a few minutes of waiting before the captain arrives and the rest of the seats fill up with red myr troops and other offworlders heading back to their ships. The plane takes off punctually, sending you hurtling through the sky towards your destination.\n\nThe plane rocks and shudders seemingly at random, making you and every ant-girl aboard sway uneasily. Engines roar deafeningly outside, and your [pc.ears] keep popping with the random changes in pressure. A couple of times, other passengers get visibly ill, and go for small paper bags tucked in the seats ahead of them.\n\nYou mumble a curse for the red myr not having a spaceport of their own and put a hand to your own stomach, trying not to puke too. Miserable things, these old planes. Absolutely miserable....\n\nIt's a blessed relief when the plane lands, even if you're nearly certain the bucket of bolts with rattle itself apart when it skids down the runway. But finally, the ride comes to an end and the plane's crew chief kicks the ramp down, letting you and the other passengers shuffle off.");
		currentLocation = "612";
		generateMapForLocation(currentLocation);
	}
	processTime(30+rand(10));
	clearMenu();
	addButton(0,"Next",mainGameMenu);
}

public function kressiaGateBonus():Boolean
{
	if (!pc.hasKeyItem("Kressia Pass"))
	{
		output("\n\nYou're forced to wait while they check your clearance. When it comes up negative, you're ordered to walk back into the caves or into a hail of bullets. You'll take the caves.");
		processTime(2);
		clearMenu();
		addButton(11,"South",move,"1H8");
		return true;
	}
	else
	{
		output("\n\nYou're forced to wait while they check your clearance. They wave you through after a minute or two.");
		processTime(2);
	}
	return false;
}
public function kressiaBasicBonusBitches():Boolean
{
	if(pc.hasStatusEffect("Myr Venom Withdrawal") && rand(10) == 0)
	{
		sluttyMcSlutOral();
		return true;
	}
	return false;
}

public function kressiaWarehouseExterior():Boolean
{
	if (kressiaBasicBonusBitches()) return true;
	
	if (flags["FAZIAN_QUEST_RESCUE_TIMER"] != undefined)
	{
		if (flags["FAZIAN_QUEST_RESCUE_TIMER"] + (6 * 60) >= GetGameTimestamp())
		{
			output("\n\nIt’s still chaos around here. Red myr soldiers are running back and forth around the warehouse and the surrounding buildings, shouting at each other and into blocky communication devices. A line of crestfallen gold myr are being led back inside. The smell of saltpetre and burning is on the air. There does not seem to be any sign of Major Ehstraffe fortunately, and the reds either ignore you or impatiently tell you to get out of the way.");
		}
		else
		{
			output("\n\nTo the east looms the warehouse. A grim-faced kui-tan is in terse discussion with a group of red myr military brass in front of the main gate. Three other reds are popping the flashbulbs of their primitive recording devices at every inch of the warehouse’s grim facade.");
		}
	}
	else if (flags["FAZIAN_QUEST_STATE"] == FAZIAN_QUEST_RESCUE)
	{
		addButton(0, "Approach", fazianQuestApproachWarehouse);
	}
	
	setNavDisabled(NAV_EAST_DISABLE);
	
	return false;
}

public function sledgehammersBonus():Boolean
{
	showBust("MYR_GOLD_GUARD_HAMMER","","MYR_GOLD_GUARD_HAMMER");
	return false;
}

public function northGildenmereCheckpoint():Boolean
{
	if(!pc.hasKeyItem("Gildenmere Pass"))
	{
		showBust("MYR_GOLD_GUARD","MYR_GOLD_GUARD");
		output("\n\nA group of golden soldiers approaches you here, checking you for the paperwork that would allow one free roam of this part of Gildenmere. When you don't have it, they show you the door. Looks like you'll have to go walk through the caves of no ant's land.");
		processTime(2);
		clearMenu();
		addButton(6,"North",move,"1J34");
		return true;
	}
	else
	{
		showBust("MYR_GOLD_GUARD","MYR_GOLD_GUARD");
		output("\n\nA group of golden soldiers approaches you, checking your paperwork. Once satisfied, they let you go on your way.");
		processTime(2);
	}
	return false;
}

public function wrongCheckpointBonus():Boolean
{
	showBust("MYR_GOLD_GUARD","MYR_GOLD_GUARD","MYR_GOLD_GUARD");
	if(flags["SIERVA_LATEGOODBYE_RESPONSE"] == LIEVE_LATEGOODBYE_YES && flags["LEARNED_IAYAS_FATE"] == undefined) addButton(0,"Question",questionTheWrongGates,undefined,"Question","Ask the guards here about Sierva’s friend, Iaya. It’s a long shot, but...");
	return false;
}
public function rightCheckpointBonus():Boolean
{
	showBust("MYR_GOLD_GUARD","MYR_GOLD_GUARD","MYR_GOLD_GUARD");
	if(flags["SIERVA_LATEGOODBYE_RESPONSE"] == LIEVE_LATEGOODBYE_YES && flags["LEARNED_IAYAS_FATE"] == undefined) addButton(0,"Question",questionTheRightGate,undefined,"Question","Ask the guards here about Sierva’s friend, Iaya. It’s a long shot, but...");
	return false;
}

public function gildenmereElevatorBottomBonus():Boolean
{
	if(!pc.hasKeyItem("Gildenmere Pass"))
	{
		//Elevator with no pass:
		clearOutput();
		showBust("MYR_GOLD_GUARD","MYR_GOLD_GUARD");
		output("A pair of gold myr guards ask to see your clearance to visit the city. When you explain that you have none, they turn you away. You’ll have to ask ");
		if(flags["MET_LYRALLA"] == undefined) output("Lyralla");
		else output("their diplomat");
		output(" for one.");
		currentLocation = "611";
		generateMapForLocation(currentLocation);
		clearMenu();
		addButton(0,"Next",mainGameMenu);
		return true;
	}
	//Elevator with pass:
	else 
	{
		showBust("MYR_GOLD_GUARD","MYR_GOLD_GUARD");
		output("\n\nYou flash the pass Lyralla gave you to the guards. They nod and gesture to the elevator. You can go to greater Gildenmere at your leisure.");
	}
	return false;
}

public function noManzLandBonus():Boolean
{
	if(flags["ENCOUNTERS_DISABLED"] != undefined) return false;
	if(flags["NO_MANS_STEP"] == undefined) flags["NO_MANS_STEP"] = 1;
	else {
		//if(pc.accessory is JungleLure) flags["NO_MANS_STEP"]++;
		flags["NO_MANS_STEP"]++;
	}
	
	var choices:Array = new Array();
	//If walked far enough w/o an encounter
	if(flags["NO_MANS_STEP"] >= 5 && rand(4) == 0) {
		//Reset step counter
		flags["NO_MANS_STEP"] = 0;
		
		//Build possible encounters
		if(CodexManager.entryUnlocked("Cockvines")) choices[choices.length] = adultCockvineEncounter;
		choices[choices.length] = cockvineSeedlingEncounter;
		if (flags["KILLED_TAIVRA"] != undefined && rand(3) != 0) choices[choices.length] = encounterNyreaBeta;
		else choices[choices.length] = encounterNyreaBeta;
		choices[choices.length] = approachMyrDeserters;
		choices[choices.length] = approachMyrDeserters;
		if(flags["ZODEE_GALOQUEST"] == undefined) choices.push(zodeeGivesFirstGalomax);
		if(flags["ZODEE_GALOQUEST"] == 1) choices.push(secondZodeeEncouonterForGaloMax);
		//Run the event
		choices[rand(choices.length)]();
		return true;
	}
	
	// Hook landmines on the end as a fall-back to fightable encounters
	if (tryEncounterLandmines())
	{
		return true;
	}
	
	return false;
}

//==========================
//  GILDENMERE SHITZ
//==========================
public function gildenmereStreetBonus():Boolean
{
	if(currentLocation == "717") genesModsExteriorRoomDecorator();
	if(flags["IRELLIA_QUEST_STATUS"] == 1 && (rand(35) == 0 || debug))
	{
		unificationInvitationEventProcInGildenmere();
		return true;
	}
	if(pc.hasCock())
	{
		if((flags["LAST_ANT_ORGY"] == undefined && rand(50) == 0) || (flags["LAST_ANT_ORGY"] != undefined && pc.isCrotchExposed() && rand(20) == 0 && ((flags["ANT_ORGY_TIME"] + 1440) <= GetGameTimestamp())))
		{
			publicUseForDickedPCsInGildenmere();
			return true;
		}
	}
	return false;
}

public function northwestMushroomParkBonus():Boolean
{
	if (flags["LIRIEL_MET"] == undefined)
	{
		if (lirielStandActiveHours()) return lirielMyrellionBonus(0);
	}
	else
	{
		output("\n\n");
		
		// Only Available during the day, at night Liriel goes and sha-boinks the locals.
		if (lirielStandActiveHours())
		{
			output("Nearby, you can see Liriel’s stand, and behind it, is Liriel herself.");
			if (flags["LIRIEL_BUTTSEXED"] != undefined) output(" She gives you a bright smile and waves as she notices you.");
			else output(" She doesn’t seem to notice you at the moment.");
			
			return lirielMyrellionBonus(0);
		}
		else if (flags["LIRIEL_MET"] >= 2)
		{
			output("Nearby is Liriel’s usual vending spot though her silvery lemonade stand is nowhere to be found.");
			if (flags["LIRIEL_TALK_STAND"] == undefined) output(" Is her stand mobile or something?");
			if (flags["LIRIEL_BUTTSEXED"] != undefined) output(" She must be out boinking the natives... And a distant echo of a euphoric moan confirms this.");
			else output(" She must be closed for the evening.");
		}
	}
	
	return false;
}

public function southwestMushroomParkBonus():Boolean
{
	if(flags["IRELLIA_QUEST_STATUS"] == 2 && hours == 18 && minutes < 30)
	{
		unificationRallyEvent();
		return true;
	}
	return false;
}

public function gildenmereCornerStreetBonus():Boolean
{
	if(flags["IRELLIA_QUEST_STATUS"] == 3 && hours == 23 && minutes >= 30)
	{
		beADumbShitFallGuyForTheRebels();
		return true;
	}
	//No explosion? Do normal street corner.
	return southwestMushroomParkBonus();
}

/* Wetraxxel Duder */
public function wetraxxelCavesBonusFunc():Boolean
{
	if(flags["ENCOUNTERS_DISABLED"] != undefined) return false;
	if(flags["NO_MANS_STEP"] == undefined) flags["NO_MANS_STEP"] = 1;
	else {
		//if(pc.accessory is JungleLure) flags["NO_MANS_STEP"]++;
		flags["NO_MANS_STEP"]++;
	}
	
	if ((rand(5) + 2) <= flags["NO_MANS_STEP"])
	{
		flags["NO_MANS_STEP"] = 0;
		wetraxxelCaveEncounters();
		return true;
	}
	
	return false;
}

public function pillarsBonusFunc():Boolean
{
	output("\n\nAs you move through the area, you see several ")
	if(CodexManager.entryUnlocked("Nyrea")) output("nyrea");
	else output("semi-chitinous women");
	output(" clinging to the shadows, quickly retreating whenever you approach.");
	return noManzLandBonus();
}
public function deepCavesEntranceBonus():Boolean
{
	if(!reclaimedProbeMyrellion()) output(" Something tells you Dad's probe is down there somewhere...");
	output("\n\nTo the south, you can see a glowing lake, illuminated by luminescent fungus and surrounded by pillars of stone that guard a passage eastward, back to the myrmedion tunnel network");
	addButton(7,"Descend",deepCavesDescend,undefined,"Descend","Climbing down will take at least an hour and wear you out a good bit. Who knows what terrors lie down there.");
	return false;
}
public function fungus1Bonus():Boolean
{
	output("To the north ");
	if(flags["FUNGUS_QUEEN_SAVED"] == undefined && flags["LET_FUNGUS_QUEEN_DIE"] == undefined) output("is a passage all but buried in glowing fungus, making it hard to see what exactly lies beyond the gently-pulsing curtain");
	else output("is a cascade of rock and jagged burn scars that marks what used to be a glowing cavern");
	output(". South lies a short passage, starting with the dessicated corpse of a giant insect.\n\nWest lies a much longer passage, the end lost in darkness.");
	return DeepCavesBonus();
}

public function caveBottomEntranceBonus():Boolean
{
	if (flags["KQ2_MYRELLION_STATE"] == 2)
	{
		output(" There's a hastily painted radiation symbol to one side of the cave here; a universal warning to any who might venture through these parts that it'd probably be prudent <i>not</i> to ascend to the upper levels of the cave system.");
		addDisabledButton(5,"Ascend");
		return false;
	}
	
	addButton(5,"Ascend",ascendFromDeepCaves,undefined,"Ascend","Climb up and out of these caves to get closer to the surface... and civilization.");
	return false;
}

public function deepCavesDescend():void
{
	clearOutput();
	//If PC has wings vers.
	if(pc.canFly())
	{
		showName("GLIDING\nDOWN");
		output("Rather than climbing down the rappelling lines, you stretch your wings and start to fly down, zipping down like a diving bird of prey into the fathomless depths of the bug world. The cavern is much, much deeper than you had expected, you quickly realize: minutes pass in controlled descent, to the point that you start to wonder if there even <i>is</i> a bottom... until you suddenly see several large, stone spikes rushing up to meet you.\n\nYou pull up at the last minute, landing between several of the largest outcroppings.");
		pc.energy(-5);
		processTime(4);
		StatTracking.track("movement/time travelled", 4);
	}
	else
	{
		showName("CLIMBING\nDOWN");
		//Pass 1 hour. Drain 50 Energy.
		var bHasKit:Boolean = pc.hasItemByType(ClimbingKit);
		
		output("You grab some of the ropes hanging off the cliff face and test their strength - they seem solid enough to hold your weight");
		if(pc.isGoo() || pc.isTaur() || pc.isNaga() || pc.isDrider()) output(", at least if you use several of them together");
		output(". Once you've secured yourself, you hop off the cliff's edge and start to rappel down in the chasm below.");
		
		if (!bHasKit)
		{
			output("\n\nThe descent takes what feels like an eternity, muscles straining as you pass further down into the heart of the world. Just as you think your arms are going to give out, you finally make it down to the bottom of the chasm, finding dusty black-gray rock beneath your [pc.feet]. You all but collapse on the ground, breathing hard after your exhertion...");
			pc.energy( -50);
			processTime(61);
			StatTracking.track("movement/time travelled", 61);
		}
		else
		{
			output("\n\nYour high-tech climbing gear really seems to come into its own, making the descent a relative breeze. You make it down to the bottom of the chasm pretty quickly, finding dusty black-gray rock beneath your [pc.feet].");
			processTime(15);
			StatTracking.track("movement/time travelled", 15);
		}
	}
	currentLocation = "2Y19";
	generateMapForLocation(currentLocation);
	clearMenu();
	addButton(0,"Next",mainGameMenu);
}

public function ascendFromDeepCaves():void
{
	clearOutput();
	if(!pc.canFly())
	{
		showName("CLIMBING\nUP");
		//Pass 90 minutes. Drain 50 Energy. For the lulz, could make ton-weight centaurs unable to climb back up. 
		
		var bHasKit:Boolean = pc.hasItemByType(ClimbingKit);
		
		if (!bHasKit)
		{
			output("You grab the ropes dangling from above and begin the arduous task of hauling yourself back up the chasm, towards the myrmedion caves. It takes ages to climb back up what feels like hundreds or thousands of feet, scrambling up the cliffside up you finally see the dim light of the glowing fungus native to the myrmedion tunnels. When you haul yourself up onto the cliff's top, you end up collapsing in a panting, gasping heap, desperately trying to catch your breath. There's got to be a better way to get out of there...");
			pc.energy(-50);
			processTime(91);
			StatTracking.track("movement/time travelled", 91);
		}
		else
		{
			output("You hook your high-tech climbing gear up to the rope and begin the task of hauling yourself back up the chasm, towards the myrmedion caves. The gadgets make the task relatively easy and you find yourself crawling over the edge of the cliffside before you know what's going on.\n\nYou crest the summit with ease and pack up your gear.\n\nNot bad.");
			processTime(20);
			StatTracking.track("movement/time travelled", 20);
		}
	}
	else
	{
		showName("FLYING\nUP");
		output("Rather than climbing up the ropes ahead like some kind of wingless peasant, you spread your [pc.wings] and take flight, soaring up the cliff face in all your inhuman majesty. The ascent takes what seems like ages, minutes and minutes spent in darkness and silence, barely able to see the ropes and rocks mere feet from your face.\n\nEventually, you arrive at the top of the chasm and land, stopping to catch your breath for a few long minutes. Whew, going up's certainly a lot more work than going down...");
		pc.energy(-25);
		processTime(20);
		StatTracking.track("movement/time travelled", 20);
	}
	currentLocation = "1D18";
	generateMapForLocation(currentLocation);
	clearMenu();
	addButton(0,"Next",mainGameMenu);
}

public function k13Bonus():Boolean
{
	output("You stand in a wide, largely open cavern chamber. In the center of the chamber is a huge stone pillar, stretching up from floor to ceiling, and covered in cave drawings and softly glowing fungus. Somebody's painted a sign on the wall, near the tunnel going westward reading ");
	if(flags["KILLED_TAIVRA"] == undefined) output("\"Long live Queen Taivra!\"");
	else output("\"Down with Queen Taivra!\"");
	return DeepCavesBonus();
}

public function queensRoadTradingPost():Boolean
{
	output("You find yourself walking among several humanoids, peacefully talking and trading under the glowing light of fungal lamps - a welcome sight against the dark, hostile caves you've traveled through until now. You see around you several myr of both colors, wearing tattered remains of uniforms or rough clothes that look stitched together from scraps; several ");
	if(CodexManager.entryUnlocked("Nyrea")) output("nyrea");
	else output("chitinous women with spiky hair and bulging crotch-plates");
	output(" are among the crowd, along with ");
	if(CodexManager.entryUnlocked("Wetraxxel")) output("burly wetraxxel males");
	else output("burly, dark bug-men of some other race");
	output(". A few guards armed with spears stand around, ready to repel the more aggressive creatures in the deep caves.");

	output("\n\nSeveral stone pillars line the passage on either side, clearly hand-carved and polished to a shine. Rather than glowing fungus coating the walls, several small clay sconces have been bolted onto the pillars, filled with colonies of the glowing fungus that sheds a soft, warm light across the tunnel.");
	return queensRoadBonusShit();
}

//Handles fixing up the map if silly mode is toggled and not yet updated!
public function emergencyMapCorrector():Boolean
{
	variableRoomUpdateCheck();
	return DeepCavesBonus();
}
public function slimyPassageBonus():Boolean
{
	output("Droplets of goo pelt the floor around you, dripping from the cave ceiling at irregular intervals. Your ");
	if(pc.isChestGarbed()) output("[pc.upperGarment]");
	else if(pc.hasBreasts()) output("breast");
	else output("[pc.chest]");
	output(" catches some of the blobs, splattering harmlessly but making you shiver nonetheless.");
	if(flags["MET_CGOOS"] == undefined) 
	{
		gooVillageThinger();
		return true;
	}
	return false;
}

public function DeepCavesBonus():Boolean
{
	if(flags["ENCOUNTERS_DISABLED"] != undefined) return false;
	if(flags["NO_MANS_STEP"] == undefined) flags["NO_MANS_STEP"] = 1;
	else {
		//if(pc.accessory is JungleLure) flags["NO_MANS_STEP"]++;
		flags["NO_MANS_STEP"]++;
	}
	if(rand(200) == 0) 
	{
		findStrangeEgg();
		return true;
	}
	var choices:Array = new Array();
	//If walked far enough w/o an encounter
	if((pc.accessory is MuskRepel && flags["NO_MANS_STEP"] >= 10 && rand(4) == 0) || (pc.accessory is MuskLure && flags["NO_MANS_STEP"] >= 3 && rand(2) == 0) || (!(pc.accessory is MuskRepel) && flags["NO_MANS_STEP"] >= 5 && rand(4) == 0)) {
		//Reset step counter
		flags["NO_MANS_STEP"] = 0;
		
		//Build possible encounters
		if(flags["KILLED_TAIVRA"] != undefined)
		{
			if(rand(3) == 0) choices[choices.length] = encounterNyreaAlpha;
			if(rand(5) == 0) choices[choices.length] = encounterNyreaBeta;
		}
		else
		{
			choices[choices.length] = encounterNyreaAlpha;
			choices[choices.length] = encounterNyreaAlpha;
		}
		if(flags["LET_FUNGUS_QUEEN_DIE"] != undefined) 
		{
			choices[choices.length] = infectedMyrmedionShit;
			choices[choices.length] = infectedMyrmedionShit;
			choices[choices.length] = infectedMyrmedionShit;
		}
		choices[choices.length] = infectedMyrmedionShit;
		if(silly)
		{
			choices[choices.length] = crystalGooFenBurps;
			choices[choices.length] = crystalGooFenBurps;
			//crystalGooFenBurps();
			//return true;
		}
		else
		{
			choices[choices.length] = crystalGooEncounterType2;
			choices[choices.length] = crystalGooEncounterType1;
		}
		if(flags["ZODEE_GALOQUEST"] == undefined) choices.push(zodeeGivesFirstGalomax);
		if(flags["ZODEE_GALOQUEST"] == 1) choices.push(secondZodeeEncouonterForGaloMax);
		
		//Run the event
		choices[rand(choices.length)]();
		return true;
	}
	return false;
}

//OFFBEATR CUSTOM SCENE
//[DUN] I want a scene where you get covered in squirt from an army of female aliens. - Possible option to reverse the scene and squirt all over the army of fem-aliens.
//Markocross12

public function showAntCommander():void
{
	showName("MYR\nCOMMANDER");
	showBust("MYR_GOLD_GUARD");
}
public function showAntOrgy():void
{
	showName("\nGOLD MYR");
	showBust("MYR_GOLD_GUARD_NUDE","MYR_GOLD_GUARD_NUDE","MYR_GOLD_GUARD_NUDE");
}

public function publicUseForDickedPCsInGildenmere():void
{
	rooms["GOLD_BUNKER"] = new RoomClass(this);
	rooms["GOLD_BUNKER"].roomName = "SOUTHWEST\nBUNKER";
	rooms["GOLD_BUNKER"].description = "";
	rooms["GOLD_BUNKER"].planet = "PLANET: MYRELLION";
	rooms["GOLD_BUNKER"].system = "SYSTEM: SINDATHU";
	rooms["GOLD_BUNKER"].northExit = "734";
	rooms["GOLD_BUNKER"].addFlag(GLOBAL.INDOOR);
	rooms["GOLD_BUNKER"].addFlag(GLOBAL.PUBLIC);
	
	rooms["734"].southExit = "GOLD_BUNKER";
	generateMapForLocation(currentLocation);
	
	flags["ANT_ORGY_TIME"] = GetGameTimestamp();
	showAntCommander();
	//Repeat Gildenbutts Intro
	if(flags["LAST_ANT_ORGY"] != undefined)
	{
		output("\n\n<i>“You there!”</i> The voice is heavy with authority, but almost casual in how it is handled. You recognize it instantly as the lusty myr commander who mistook you for her troops’ entertainment. <i>“Yes, you!”</i>");
		output("\n\nYou turn to look back, coming face-to-face with the ");
		if(flags["LAST_ANT_ORGY"] >= 0) output("smiling");
		else output("pissed-off");
		output(" commander. Just like last time, she’s at a column of armored battle-maidens. It looks like they’re out on one exercise or another, but you know from experience what they’re really on the prowl for: entertainment.");
		output("\n\n<i>“Me?”</i>");
		output("\n\n<i>“Yes, you.”</i> Her antennae stab accusingly in your direction. <i>“");
		if(flags["LAST_ANT_ORGY"] > 0) output("The girls won’t stop asking for a star-walker entertainer after the last one. You appear an exhibitionist. Care to make a bit of shine?");
		else output("You look like the exhibitionist type. Care to make a bit of shine? My girls’ last entertainer skipped out on them, and they are so pent up.");
		output("”</i> She doesn’t appear to recognize you. Perhaps her eyesight is especially poor? Or, more likely, she thinks all non-myr look the same.");
		output("\n\nWill you volunteer to entertain a whole unit of gold myr soldiers?");
		processTime(1);
		clearMenu();
		addButton(0,"Yes",goWithTheAntOrgy);
		addButton(1,"No",turnDownPublicAntUse,undefined,"No","You are much too busy for this.");
	}
	//Cocked PC mistaken for stripper in Gildenmere. 1x only unless nude
	else
	{
		output("\n\n<i>“You there!”</i> The voice is heavy with authority, but almost casual in how it is handled. Whoever it is, they’ve grown accustomed to barking orders. <i>“Hey, you!”</i>");
		output("\n\nYou turn back to look, coming face-to-face with a severe-looking gold myr - one wearing a few too many medals to ignore. Worse still, she’s backed up by a column of twenty grim-faced soldiers. <i>“Me?”</i>");
		output("\n\n<i>“Yes, you.”</i> Her antennae stab accusingly in your direction. <i>“Your were due at the barracks over twenty minutes ago. I don’t care how big your dick");
		if(pc.cockTotal() > 1) output("s are");
		else output(" is");
		output(". There’s no excuse for failing to keep an appointment.”</i>");
		output("\n\nYou tilt your head to the side, clearly confused.");
		output("\n\n<i>“Oh, you poor, simple thing. Get a dick between your legs, and suddenly you can’t be bothered to keep up with your duties.”</i> Facepalming, the commander sighs heavily. <i>“You don’t even have to do anything difficult, just lie down and...”</i> She blushes, waving her hand in the air in frustration. <i>“...you know! You’re coming with us until you’ve finished your job.”</i> Muttering under her breath, she adds, <i>“These brainless entertainment " + pc.mf("boys","sluts") + " have no sense of honor.”</i>");
		output("\n\nYou could make a break for it, or go along with them. It would seem they have you mistaken for someone else...");
		processTime(2);
		//[Run] [Go With]
		clearMenu();
		addButton(0,"Go With",goWithTheAntOrgy);
		addButton(1,"Run",turnDownPublicAntUse,undefined,"Run","Aww hell no!");
	}
}

public function turnDownPublicAntUse():void
{
	clearOutput();
	showAntCommander();
	//Repeat - no
	if(flags["LAST_ANT_ORGY"] != undefined)
	{
		rooms["734"].southExit = "";
		
		output("<i>“No.”</i>");
		output("\n\nThe commander looks at you incredulously, flicking her onyx eyes up and down your body. <i>“Truly? Why dress in such a way if not to arouse others?”</i> Shaking her head, she sighs. <i>“Never mind. We’ll find someone suitable, won’t we girls?”</i>");
		output("\n\n<i>“<b>Yes ma’am!</b>”</i>");
		output("\n\nThey march off. Weirdos.");
		processTime(1);
		flags["LAST_ANT_ORGY"] = 0;
		clearMenu();
		addButton(0,"Next",mainGameMenu);
	}
	//Run
	else
	{
		output("You lift a finger, as if to raise an objection, then spin on your heels, running for the nearest alleyway.");
		output("\n\nA commanding shout cuts the air, followed by the sound of dozens of chitinous feet. They’re chasing after you!");
		clearMenu();
		addButton(0,"Next",runningFromAntsmex);
	}
}

//Escape
public function runningFromAntsmex():void
{
	clearOutput();
	showAntCommander();
	var runScore:Number = pc.reflexes()/2 + rand(20);
	if(runScore > 20)
	{
		rooms["734"].southExit = "";
		
		output("The slow-footed soldiers are no match for an explorer on the run like yourself. You ");
		if(runScore > 30) output("easily outpace them");
		else output("gradually pull away from them");
		output(", fleeing to the safety of the great lift before you can get pulled into some other libertine ritual.");
		processTime(3);
		pc.energy(-15);
		clearMenu();
		flags["LAST_ANT_ORGY"] = -1;
		addButton(0,"Next",mainGameMenu);
	}
	//Fail
	else
	{
		output("You run like there’s a nova bomb behind you, about to go off, but it’s all for naught. The militaristic maidens catch you before long, barely out of breath despite the lengthy chase. It would seem that Gildenmere’s finest do not take their physical fitness lightly!");
		output("\n\nHard, naturally-armored bodies pile onto you, burying you in a near-bruising tackle. Worse still, the aggressive warriors aren’t too proud to take advantage of the situation, roughly groping your crotch even as they bind your arms behind you, teasing you until ");
		if(!pc.isCrotchExposed()) output("you’re hard enough to jut out of your recently-opened bottoms");
		else output("you’re hard enough for the whole city to see your shame");
		output(". Giggling amongst themselves, the four-armed fighters hoist you up on their shoulders and march you back to the barracks, waving your [pc.cocks] in the air like ");
		if(pc.cockTotal() == 1) output("a flagpole.");
		else output("flagpoles.");
		flags["LAST_ANT_ORGY"] = 2;
		processTime(2);
		pc.energy(-15);
		pc.HP(-5);
		pc.lust(45);
		clearMenu();
		addButton(0,"Next",goWithTheAntOrgy, false);
	}
}

//Go With
public function goWithTheAntOrgy(voluntary:Boolean = true):void
{
	currentLocation = "GOLD_BUNKER";
	generateMapForLocation(currentLocation);
	
	clearOutput();
	showAntOrgy();
	
	if(voluntary)
	{
		flags["LAST_ANT_ORGY"] = 1;
		output("Putting up your hands, you agree to go with them. ");
		if(flags["ANT_ORGY_COUNT"] != undefined) output("After your last visit, another trip to the land of honey and pussy sounds more than welcome.");
		else output("Surely whatever sort of entertainment they have planned for your [pc.cocks] must be enjoyable. It sounds like you’ll have a whole barracks full of honey-squirting all to yourself.");
		output(" What more could you ask for?");
		output("\n\n<i>“That’s more like it.”</i> The commander smacks you on the ass with a short, metal rod and bellows, <i>“March!”</i>");
		output("\n\nJumping from the painful swat, you start marching with them, never straying far from the authoritative alien, lest she decide to lay into you once more. Fortunately, their troop’s barracks isn’t far. A few minutes at a quick pace has you closing in on their barracks - a solid concrete structure designed more for defensibility than aesthetics. The squat doorway is hauled open, and you are lead inside by the golden officer, backed up by the column of grinning soldiers.");
		output("\n\nA maze-like series of twisting tunnels pass you by, fully ensuring your disorientation by the time you reach the wide-open room that serves as the unit’s quarters. As you step inside, you briefly wonder if you’ll ever see the light of the sun again. ");
		if(flags["ANT_ORGY_COUNT"] != undefined) output("Sure, they let you go last time, but they really seem to have taken a shine to you. Perhaps they’ll keep you once more? ");
		output("You ");
		if(flags["ANT_ORGY_COUNT"] != undefined) output("still ");
		output("don’t know your way out, and even if you did, there are dozens of lusty women blocking the way back - not to mention the hundreds of potential pursuers just ahead, all of them turning their hungry, inky eyes in your direction. You stop, momentarily paralyzed by the scale of what you’ve walked into.");
		if(flags["ANT_ORGY_COUNT"] == undefined) output(" Just how many barracks like this do the gold myr have? And if the golds have numbers like this, then the reds....");
		output("\n\nTwo hands roughly grab you by the crotch, openly fondling your ");
		if(pc.lust() >= 70) output("completely erect");
		else output("rapidly engorging");
		output(" penis");
		if(pc.totalCocks() > 1) output("es");
		output(", disarming your mind as effectively as their fellows disarm your body. In the span of seconds, ");
		if(!pc.isNude()) output("you are stripped naked");
		else output("you are liberated of your equipment");
		output(", but the warmth of the room and the hands in your loins keeps the chill from bothering you.");
		output("\n\n<i>“Do not fret,”</i> coos a myr, wearing her helmet and little else. She joins her sisters in stroking you. <i>“Your equipment will be returned to you, after the entertainment. Come!”</i> Tugging you, the ant-woman drags you toward the center of the room, helped along by her sisters. You let yourself be lead, escorted by chitinous hands and sensuously rubbing fingers. They gradually drag you to the center of the chamber. The journey must take several minutes, but to you, it feels like no more than a few throbbing heartbeats.");
		output("\n\nAn upraised slab of stone is clearly your destination, judging by the mattress placed in the center, ringed by thick, wooden poles. A hole has been cut in the center, doubtless to make room for a myr’s abdomen");
		if(pc.tailCount == 0) output(", but a considerate young lass obligingly fills it with her pillow, batting her eyelashes at you all the while.");
		else output(", and you are thankful to have room for your [pc.tails].");
		output(" As you lower yourself down, laying out on the flat of your back, you grab hold of the poles to steady your progress. It is then that you ");
		if(flags["ANT_ORGY_COUNT"] != undefined) output("remember");
		else output("ascertain");
		output(" their true, all-too-sexual nature, for they are made with veins and bulges, bulbous tips and nearly-testicular swells. You’re sprawled out, surrounded by a twelve gigantic dildos of various shapes, polished to glass-like smoothness. Beyond the phallic pillars is a wall of panting, horny myr soldiers, dribbling honey from behind as they stare at your nude, eager form.");
		output("\n\n[pc.EachCock] sticks straight up, ");
		if(pc.cockTotal() == 1) output("a ");
		output("fleshy alternative");
		if(pc.cockTotal() > 1) output("s");
		output(" to the impassive wooden boners that surround ");
		if(pc.cockTotal() > 1) output("them");
		else output("it");
		output(", all too happy to offer ");
		if(pc.cockTotal() == 1) output("itself");
		else output("themselves");
		output(" for use as another toy. It would seem your body cares less for your dignity than the promise of a golden, honey-laced myr-cunt. You look around you, realizing that the soldiers have formed lines behind each of the twelve posts. They leer down at you, barely restraining themselves from taking you on the spot. You can’t imagine a more vulnerable position to place yourself, nor one so bizarrely arousing.");
	}	
	else
	{
		output("You are stripped of your equipment");
		if(!pc.isNude()) output(" and your garb");
		output(" by the time the army of lusty myr reaches its destination - a solid concrete structure designed entirely for defensibility over aesthetics. You’re lowered, in order to fit through the squat doorframe, then hauled on inside, bodily carried through winding corridors to the sleeping quarters. The wide-open room is broken up by hundreds upon hundreds of beds, many occupied by off-duty myr. Some are reading, writing letters, or maintaining their weapons, but they universally set aside their distractions at the sight of you.");
		output("\n\nHundreds of inky, inhuman eyes fix on your naked body, regarding you with obvious desire. Cat-calls fill the air.");
		output("\n\n<i>“Ya find our party-boy, Commander?”</i>");
		output("\n\n<i>“Check out the ");
		if(pc.biggestTitSize() >= 10) output("tits");
		else output("dick");
		output(" on that one!”</i>");
		output("\n\n<i>“Oh finally, I haven’t seen a real cock in ages!”</i>");
		output("\n\n<i>“Woo! Talk about exotic! I didn’t know we were getting a star-walker today!”</i>");
		output("\n\nFinally, once you’ve reached the center of the chamber, you are set down and released. Ranks upon ranks of marshalled myr close in from all sides, most of them quite young. Military life has obviously been hard on them. You can’t spot a single girl with more than a C-cup among the entire sea of feminine forms.");
		output("\n\n<i>“Go on then, on the recreation slab,”</i> their leader barks, pushing you toward a cheap-looking mattress on the floor. Bizarrely, there’s an opening in the middle for what you assume must be a male myr’s abdomen, and dozen polished wooden poles roughly arranged in a man-sized outline. Each has a slightly different shape. Some are thickers than others, some have nodules and textured rings. Others still have obviously, testicle-like bulges. They’re all... they’re all dildos? Wrinkling your nose, you realize that the whole mess, dildo and mattress alike, smell vaguely of stale honey...");
		output("\n\n<i>“Hurry up!”</i> calls an innocent-looking myr maiden, dripping not-so-innocent honey from the back of her abdomen. <i>“You’re going to look so nice covered in honey.”</i> She blushes, but the hooting of her cohorts brings a smile to her face.");
		output("\n\nFaced with no other recourse, you climb down onto the mattress, careful not to fall onto any of the too-lewd posts.");
		if(pc.tailCount == 0) output(" A considerate, junior officer hands you a few pillows to stuff the hole in the mattress with, since you lack the body shape of their typical entertainment.");
		output(" From down here, you can’t help but feel very small, and very, very vulnerable. Ringed by artificial phalli, you feel like just another toy among many, waiting on these statuesque alien women to use you for their pleasure. Your [pc.cocks], still half-hard from the rough treatment on the way in, seem");
		if(pc.cockTotal() == 1) output("s");
		output(" to grow an inch longer at the thought, caring more for the promise of lusty maidens than your dwindling dignity.");
	}
	//Merge
	output("\n\n<i>“Oh, [pc.heShe]’s excited,”</i> a high-pitched voice observes.");
	output("\n\n<i>“May we mount [pc.himHer], mistress?”</i>");
	output("\n\n<i>“Oh please! How can we not");
	if(pc.longestCockLength() < 6) output(" play with such a feeble member");
	output("?”</i>");
	output("\n\nThe commander nods, her cheeks slowly coloring. <i>“It seems only fitting since [pc.heShe] ");
	if(flags["ANT_ORGY_COUNT"] == undefined) output("was so late to arrive");
	else output("has put on such a wanton display");
	output(". Very well. Ithris, Borea, Mystryn, Haedin, and Phorah. You set the top scores in this week’s physical evaluation, so you may ride our entertainment directly, if you wish.”</i> She raises an arm when all five of the named girls step forward. <i>“In that order. No fighting over our guest.”</i>");
	output("\n\n<i>“Yes ma’am!”</i> The five answer, saluting.");
	processTime(15);
	pc.lust(20);
	clearMenu();
	addButton(0,"Next",antOrgyPartDues,voluntary);
}

public function antOrgyPartDues(voluntary:Boolean):void
{
	clearOutput();
	showAntOrgy();
	output("Some unspoken signal goes through the horde of armored ant-girls, and as the first lucky lady steps over you, a dozen of the aroused ant-girls advance. Your lover-to-be smiles down at you, then lowers herself down so that her crotch sits on your chest and [pc.oneCock] has no choice but to slide up and into her descending abdomen, filling the air with the sloppy, wet-sounding ‘squish’ of penetration. Another, exponentially more decadent sound fills the air but a second later: all twelve of the eager myr maidens mounting their substitute members. Some do it from behind, facing away from you as they watch you being taken. Others face forward, pressing their breasts against one another, shading you beneath a quartette of sapphic kisses.");
	pc.cockChange();
	var x:int = pc.cockThatFits(1000);
	if(x < 0) x = pc.smallestCockIndex();
	output("\n\nMoans fill the air, and you feel the first flecks of honey spattering against your skin. At first, it’s mere droplets from your lover’s excessively lubricated slot, but then you feel others on your [pc.legs], your arms, and even your [pc.face]. You knew Gildenmere had a mostly female army, but you had no idea how horny intensive training would leave them - how it would make them so wet and ready that their quivering snatches would be dribbling honey, dumping out little micro-squirts from the mere sight of a penis-packing star-walker. You might care more if their sex juices didn’t resemble a slicker version of honey, or if you weren’t ");
	if(pc.cockVolume(x) < 1000) output("hilted");
	else output("firmly embedded");
	output(" in an inhumanly silky snatch.");
	output("\n\nLeaning your head back, you give yourself over to the sensations assaulting you, pumping your hips in the air, creating noisy squelches every time you split open the randy ant’s exotic slit. She’s not the tightest, not by a long shot, but ");
	if(pc.cockVolume(x) >= 700) output("that’s just perfect for someone as hung as you");
	else output("she makes up for it with power of her internal muscles");
	output(". Clamping down on you, the gilded slattern transforms her tunnel into a constricting vise, tight enough to bring the friction of flesh-to-flesh contact back to the fore. No amount of dribbling, girlish honey could make you ignore the texture of her folds, nor the way her muscles contract in different batches, squeezing you from above and below, then from the sides.");
	//2nd Dick
	if(pc.cockTotal() > 1)
	{
		output("\n\nHoney-slicked hands encircle your second member midway through your blissful, fuck, twisting and sliding to gird the entirety of your reserve pole in fragrant fuck-juice, lubed up and ready to go.");
		output("\n\n<i>“Don’t mind me,”</i> the grinning, orange-haired temptress coos. <i>“I’m just getting ready for my turn...”</i>");
		//Third dick?
		if(pc.cockTotal() > 2) output("\n\nA third girl steps up, holding a palmful of honey up to your third penis. <i>“Well if that’s the case, then I suppose I’ll make sure our " + pc.mf("stud","toy") + " hurries up. If [pc.heShe] cums, it’s the next girl’s turn, right?”</i> Rubbing the amber goo along your rod, she begins eagerly pumping it, trying to coax you into nutting into her sister-soldier’s sopping fuckbox.");
	}
	//Merge
	output("\n\nAll around you, girls start creaming themselves, wantonly bouncing up and down, impaling their swollen, insectile abdomens on the rigid rods, imagining that they’re the lucky girl atop you. Honey showers over you, splattering over every part of your supine body. You lick flecks of it from your lips - and, noting looks of approval from the gallery - gather more to drink, making a show of sucking the amber juices from your fingertips. Fluttering your eyes closed, you pull your glistening digits from your mouth and reach out, finding more eager girls all too willing to feel their entertainer’s touch upon the nethers. Arousal-bloated lips part around your questing fingers as you hear the sounds of exhausted girls being pulled from the poles - only to be replaced with fresh troops eager to reduce themselves to simpering tarts.");
	
	var pp:PregnancyPlaceholder = new PregnancyPlaceholder();
	if (!pp.hasVagina()) pp.createVagina();
	pp.girlCumType = GLOBAL.FLUID_TYPE_HONEY;
	
	processTime(13);
	pc.lust(25);
	pc.girlCumInMouth(pp);
	applyPussyDrenched(pc);
	applyPussyDrenched(pc);
	clearMenu();
	addButton(0,"Next",antOrgyPartThree,voluntary);
}

public function antOrgyPartThree(voluntary:Boolean):void
{
	clearOutput();
	showAntOrgy();
	var x:int = pc.cockThatFits(1000);
	if(x < 0) x = pc.smallestCockIndex();
	output("Who would have thought that you’d wind up in the middle of an army barracks, surrounded by a dozen masturbating myr, surrounded by hundreds more, also masturbating, while four more line up to fuck you after the first finishes? You let yourself groan. There’s no point in holding it back, not while you’re in the middle of such a debauched gathering. Not while scores of women moan and writhe, juicing and fondling themselves over the thought of a chance at your dick. How could you? It’d be almost... selfish.");
	output("\n\nLetting your tongue loll out, you thrust your hips upward, slamming home hard, feeling the honeyed honey’s clit grind on against your groin. She screams, thrashing and jiggling, oozing more honey from her bronzed nipples in the moment of her orgasm. Clamping down hard, her walls caress your [pc.cock " + x + "], lavishing it in orgasmic attentions even as her honey drenches your crotch");
	if(pc.balls > 0) output(", soaking your [pc.balls] in syrupy goodness");
	else output(", soaking you from [pc.sheath " + x + "] to ass-crack in the syrupy goodness");
	output(". You answer with another grunt, swallowing the mouthful of honey your tongue had gathered in order to properly vocalize your pleasure. <i>“Yes!”</i>");
	output("\n\nThe frenzied, potent squeezes on your [pc.cock " + x + "] seem endless, a constant tug and stroke that inexorably drags you toward your own peak. Rather than resist, you let yourself be brought to that heavenly state, marveling at the raw display of glistening, sweat-drenched femininity all around you. Glossy, smooth buttcheeks tremble. Pussy-bearing abdomens bounce and wobble. Pert, orangish-gold breasts gently bounce against suckling onyx lips. Everywhere there is nothing but fucking, nothing but rutting, a symphony of sensuous pleasure enveloping your senses from head to nose to dick to toes.");
	output("\n\nYou think it might be too much when an adventurous private turns to place her pussy atop your head, utterly enveloping you from chin to the bridge of your nose, but then you find yourself cumming, orgasming to the sight and scent of a hot wet box pressing on your face, needfully demanding your tongue slip inside. You do, of course. What else could you do but lick and cum... slurp and orgasm? Your whole world is amber, a fine coating of it from head to toe, laden with pheromones and sweetness. Your cock is swaddled in it, jerking and spurting, firing [pc.cumNoun] to the tempo set by your gilded mistresses.");
	//Huge cums
	if(pc.cumQ() > 5000)
	{
		output("\n\nWhen the cum proves too much for the lucky cadet, she ");
		if(!pc.hasKnot(x)) 
		{
			output("pulls free, letting the next-closest girl take you in her mouth, her ebony lips sealing down to try and savor every drop, providing the perfect amount of suction to draw out still more from your aching, spasming ");
			if(pc.balls > 1) output("balls");
			else output("form");
			output(".");
		}
		else 
		{
			output("tries to pull free, but it’s no use. She’s knotted, sealed to your body by the bulbous, swollen flesh just above your base. Her frantic tugs only serve to excite you further - and ensure another ");
			if(pc.cumQ() < 5500) output("few squirts are");
			else if(pc.cumQ() < 6000) output("gallon is");
			else if(pc.cumQ() < 10000) output("few gallons are");
			else output("swimming pool worth of spunk is");
			output(" delivered to her vestigial womb.");
		}
	}
	//Knot, no huge cum
	else if(pc.hasKnot(x)) output("\n\nWhen she tries to climb off, she catches on your knot, and in a moment of panic, thrashes and tugs, violently trying to climb off. It’s of little use. The swollen bulb of flesh holds her perfectly to your crotch, and her struggles only rekindle your fading passion, ensuring you pump another few squirts of love into her vestigial womb.");
	//Merge
	output("\n\nFinally spent, you let your tongue fall limp. You simply don’t have the energy to tame the twat above for the moment. Maybe in a few minutes. Instead, you turn your head to the side and pant, letting the recruit slide herself across your cheek. She doesn’t seem to mind, not even when you gasp from the feeling of your first fuck ");
	if(pc.hasKnot(x)) output("finally popping off of your still-swollen knot");
	else output("finally staggering to her feet, backwashing hot [pc.cumNoun] over your [pc.belly].");
	//bro
	if(pc.isBro()) 
	{
		output("\n\n<i>“Gimme a minute.”</i> You grunt and shake your head, marshalling your impressive internal reserves. If there’s one thing a ");
		if(pc.isTreated()) output("bull");
		else output("pro");
		output(" like you can do, it’s muscle past the limits of refractory periods to please every single one of these ladies.");
	}
	//Bimbo
	else if(pc.isBimbo()) output("\n\nGiggling, you dazedly admit, <i>“Like, I need to catch my breath. I’ll lick and fuck all your pussies in a minutes. They’re fucking yummy!”</i> The last comes out as cheer, said in the sort of tone you’d expect to hear from the girls at a high-school football game instead of someone who just blew a huge load in an alien honeypot.");
	//Not bizzaro!
	else output("\n\n<i>“G-girls. I’m spent,”</i> you pant, hoping they’ll give you a few minutes to recuperate before forcing you to copulate once more. <i>“Give me at least a few minutes to recover.”</i>");
	
	var pp:PregnancyPlaceholder = new PregnancyPlaceholder();
	if (!pp.hasVagina()) pp.createVagina();
	pp.girlCumType = GLOBAL.FLUID_TYPE_HONEY;
	
	processTime(18);
	pc.orgasm();
	pc.girlCumInMouth(pp);
	applyPussyDrenched(pc);
	applyPussyDrenched(pc);
	//[Next]
	clearMenu();
	addButton(0,"Next",antOrgyPartFour,voluntary);
}

public function antOrgyPartFour(voluntary:Boolean):void
{
	clearOutput();
	showAntOrgy();
	output("Light nearly blinds your eyes when the squirming harlot is pulled off your face, revealing the severe-looking visage of this barrack’s commander. <i>“You’re contracted to serve until my soldiers are satisfied, and serve you shall.”</i> She produces a vial of bubbling, pink-hued liquid. <i>“Wartime authorization 647 sanctions the use of enhancement chemicals in times of extreme need, determined by the unit commander.”</i> Looking over soldiers, she bellows out, <i>“I think this qualifies as extreme need. What do my fine soldiers think?”</i>");
	output("\n\nA chorus of cheers and moans answers her, and nodding to herself, she holds the vial to your [pc.lipsChaste], tipping the frothy liquid in your panting maw. <i>“Drink up.”</i>");
	//Addict
	if(pc.hasPerk("Venom Slut") || flags["VENOM_ADDICTION"] != undefined)
	{
		output("\n\nOh yes, just what you needed - a touch of venom to make everything feel sharper, harder, and wetter. The taste of it makes your whole body feel juicier and slicker than ever before, like your entire body is one big sexual organ half-way through getting fucked. [pc.EachCock] abruptly returns to full hardness.");
	 	if(pc.hasLipples()) output(" Your [pc.nipples] part, eager to be stuffed with something, anything.");
	 	else output(" Your [pc.nipples] crinkle and tingle, anxious for stimulation.");
	 	output(" Smearing the pink-tinted goo across your lips, you moan like a whore. Then, in a moment of clarity, you realize that you’re actually moaning like a slut. Whores get paid. Sluts fuck for free, and you’ll fuck for free. You’ll fuck so hard for free.");
	}
	//Non addict
	else
	{
		output("\n\nEven if you wanted to resist it, you couldn’t. The moment it makes contact with your [pc.lipChaste], the red myr venom’s insidious effects make themselves known, lighting up your nerves like a Christmas tree. Your mouth feels almost like it’s buzzing, like the press of your tongue is a lover’s frantic caress. You open wide to moan, too late realizing that you’ve given the commander ample opportunity to fill your mouth with the drugged sludge. Briefly, you make an effort not to swallow, but it just leaves your mouth feeling like one of those needfully dripping pussies, so hollow and aching for sensation.");
		output("\n\nYou swallow, feeling [pc.eachCock] instantly leap back to full hardness, feeling warmth course through your body, buzzing in your fingers and [pc.toes]. Running your arms over your cunt-slicked body, you can’t help but feel like you’re melting - like your body is heating up and dissolving into the pooling sex-juices. Everything feels so good too. Is this how a galotian feels all the time? Gooey and good, like any part of your body could become the most sensuous thing in the world in a nanosecond?");
		output("\n\nYou moan like a slut, not caring at all how it sounds to the assembled myr. You’re just like them, sweet and wet, waiting to be taken and fucked. They’ve gone so long without pleasure, and you can think of nothing but giving it back to them, however long it takes.");
	}
	//merge
	output("\n\n<i>“Next!”</i> bellows the commander, slapping your cunt-glazed cheek for good measure.");
	output("\n\nIt feels... good. It should hurt, but it’s like she can do no wrong. You bite your lip and leak, squirming while the next myr in line mounts you.");
	output("\n\nThe girls on poles go into a frenzy at the sight of your excessively eager behavior. At least two of them cum, gushing honey everywhere. It sprays out like water from a firehose, drenching you. Thick blobs of it roll down your side, puddling on the mattress and the slab below. Only now can you appreciate how this place had such a sweet smell when you arrived, no matter how well-cleaned it had been. There’s simply too much thick, cloying scent soaking into the padding below that no amount of soap will ever wash it out. The stone itself is impregnated with girl-musk, forever attuned to the scent of drizzling myr-puss. Ten centuries from now, you have no doubt that this room will still smell like fucking.");
	output("\n\nWaggling your tongue at the commander, you all but beg her to mount your face. She pushes the private back on you instead, watching with a sneering expression that does a poor job of hiding her intrigue. That’s fine. One cunt is as delicious as another. Rolling her clit on your [pc.tongue], you wonder how many pussies you’ll be able to lick - and how many cunts you’ll get to bring to climax. Right now, your [pc.cock " + x + "] feels harder than armor plating, but surely your endless desire will fade later. You’re going to try like hell to please all of them.");
	output("\n\nAnd then pussy is wrapping around you once more, dissolving your perceptions in its soppy-wet darkness, consuming you with the delightful flutters of his hot folds. You’re all wrapped up in it, thrusting and pumping, joyously celebrated the endless pleasure that comes from fucking such a perfectly pleasurable quim.");
	output("\n\nHoney glistens on your partner’s abdomen, squirted by her sisters. Mouths suckle the chosen girl’s nipples and kiss her shoulders, kissing up to her neck in order to reach each other’s mouths. Her breasts are a touch bigger than your previous user, and they bounce and ripple enticingly with every greedy gyration of her otherwise muscular body. She glistens and twists, revealing herself for the engine of sexual gratification that she is, feeding and giving bliss in equal measure.");
	output("\n\nThe pleasure crests within you, forcing you to cum, driving you to orgasm, demanding that you paint this ant-girl’s pussy as thoroughly as the last. Your lips seal around a clit, and your tongue thrashes while you cum. It feels like your mouth is cumming just as much as your [pc.cocks], and you do everything you can to prolong that perfect pleasure.");
	
	var pp:PregnancyPlaceholder = new PregnancyPlaceholder();
	if (!pp.hasVagina()) pp.createVagina();
	pp.girlCumType = GLOBAL.FLUID_TYPE_HONEY;
	
	processTime(33);
	pc.orgasm();
	pc.lust(100);
	//Red myr dose
	imbibeVenomEffects(true);
	pc.girlCumInMouth(pp);
	applyPussyDrenched(pc);
	applyPussyDrenched(pc);
	//[Next]
	clearMenu();
	addButton(0,"Next",antOrgyPartFive,voluntary);
}

public function antOrgyPartFive(voluntary:Boolean):void
{
	clearOutput();
	showAntOrgy();
	output("You’re still tongue-fucking the same greedy girl a half-hour later. Two more vaginas have graced your [pc.cock " + x + "] since, but it shows no sign of flagging. Nor should it. You can’t imagine yourself being any less hard or ready to fuck than these women’s other toys. It’s sweet, not just in the smell and the taste of their gloriously delectible cum, but in the raw experience of it - the wonderfully improbable gestalt of a horde of women on your fingers, mouth, and cock, surrounding you and bathing you in the scintillating scent of their wanton need.");
	output("\n\nYou’re aware of yourself cumming a few more times, feeling the pleasant contractions at molten eruptions repeatedly, but you never seem to come down from them. Especially not when more venom is drizzled between the gilded cunt on your face and your tongue, forcing you to drink more down. Your fingers feel just as good as your cock, thrusting in and out, pumping and humping and squelching in the beautiful entrances to these pretty privates’ privates.");
	var x:int = pc.cockThatFits(1000);
	if(x < 0) x = pc.smallestCockIndex();
	output("\n\nOver and over, your [pc.cock " + x + "] experiences new vaginas. Far more than five girls mount you, and the poles must have seen at least two hundred different cunts, but there are always more to use you, always more slits, clits, and tits.");
	output("\n\nYou serve them as best you are able. Even when your muscles ache and your [pc.cocks] ");
	if(pc.cockTotal() == 1) output("is");
	else output("are");
	output(" raw, you serve them, still hard, still fighting to impregnate every one of them, no matter how infertile.");
	output("\n\nThen two women get the bright idea to press their abdomens together, pussy-to-pussy and both within reach of your tongue. You stop getting chances to see what’s going on, but there’s little reason to care, not when you’re drunk on saccharin cunt.");
	
	var pp:PregnancyPlaceholder = new PregnancyPlaceholder();
	if (!pp.hasVagina()) pp.createVagina();
	pp.girlCumType = GLOBAL.FLUID_TYPE_HONEY;
	
	processTime(60);
	//Red myr dose
	imbibeVenomEffects(true);
	for(var y:int = 0; y < 10; y++) { pc.orgasm(); }
	pc.girlCumInMouth(pp);
	pc.girlCumInMouth(pp);
	pc.girlCumInMouth(pp);
	applyPussyDrenched(pc);
	applyPussyDrenched(pc);
	clearMenu();
	addButton(0,"Next",antOrgyEnding, voluntary);
}

public function antOrgyEnding(voluntary:Boolean):void
{
	currentLocation = "734";
	rooms["734"].southExit = "";
	rooms["GOLD_BUNKER"].northExit = "";
	
	clearOutput();
	showName("THE\nAFTERMATH");
	
	//Take 50% HP damage, reduce energy to 0, then pass 120 minutes
	processTime(120);
	pc.HP(-1 * Math.round(pc.HPMax()/2));
	pc.energy(pc.energyMax());
	output("When you come to, everything hurts. You can barely move without wincing, but you make yourself look around all the same.");
	output("\n\nYou’re no longer in the living quarters. Instead, you’re in a small chamber adjacent to the street - but still sitting on the familiar sticky mattress. One door leads out and another deeper into the complex. You note that the one leading in has been locked, leaving you no choice but take the walk of shame. Your equipment is by the door, totally accounted for - along with a few worthless gems and some much more useful credits. It would seem your ");
	if(!voluntary) output("accidental");
	else output("group");
	output(" whoring has earned you a pretty penny.");
	output("\n\nNow if only you could shower before stepping out into the street. Everyone is going to see how thoroughly you’ve been used");
	if(pc.exhibitionism() >= 33 && pc.exhibitionism() < 66) output(", a thought that secretly thrills you");
	else if(pc.exhibitionism() >= 66) output(", a thought that makes you all the more eager to step outside");
	output(".");
	pc.credits += 100 + rand(101);
	IncrementFlag("ANT_ORGY_COUNT");
	clearMenu();
	addButton(0,"Next",mainGameMenu);
}