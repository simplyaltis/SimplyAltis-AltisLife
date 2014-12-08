SimplyAltis Development
======
This is the source code for the SimplyAltis Arma 3 Server.

ToDo - 12/5/14
------
- [ ] more crafting
- [ ] dynamic markets
- [ ] fix bugs
- [ ] save civ positions
- [ ] bounty hud
- [ ] bounty hunter fixes/features: taze/arrest only wanted, alert bounty, 30 round mags, player tag icon, pullout players
- [ ] posting on forums = +1000 per post
- [ ] auto donator setup
- [ ] whitelisting forms
- [ ] new billboards === MISSIONFILE
- [ ] new food places === MISSIONFILE
- [ ] new guides on map
- [ ] revoke licenses
- [ ] seize vehicles
- [ ] fuel consumptions
- [ ] save fuel in garage
- [ ] save vehicle trunk inventory
- [ ] fix slingloading
- [ ] impounding for medics
- [ ] underwater diving === MISSIONFILE
- [ ] police rep points?
- [ ] remove school in kavala === MISSIONFILE
- [ ] move stuff in kavala === MISSIONFILE
- [ ] split bank accounts
- [ ] centralize messages: restrain msg for cops, etc.
- [ ] shrink pbo, shrink textures
- [x] new music
- [ ] add to wanted list
- [ ] add npc loadouts === MISSIONFILE
- [x] hatchback lights
- [ ] replace createvehicle
- [ ] Add: roadbarries, roadcone, tapesign, arrowleft, arrowright, lollipops(medic)
- [x] sort the lists
- [ ] finalize be filters
- [ ] optimize mission sqm file === MISSIONFILE
- [ ] change the server name + add slots to 120 + add more civ/cop/medic slots
- [ ] add general store on rebel outposts === MISSIONFILE
- [ ] teargas
- [ ] bank alarms
- [x] change auto save message
- [x] fix jail exploit
- [ ] donator helis
- [ ] add casino === MISSIONFILE
- [ ] impound glitch with dead bodies
- [ ] crystal blue persuasion
- [ ] make hints better looking
- [x] update cash value on debit card purchase
- [ ] add playerid to logit
- [x] add min transfer



WIP Changelog - 12/7/14
------
- Adjust max carrying weight
- Fixed jail exploit
- Changed Auto-Save Message
- New Intro Music
- Altered welcome message
- Fixed looting dead corpses exploit
- Added a minimum to bank transfers to stop $1 donation trolling
- Fixed debit card purchase not updating atm value
- Finally fixed hatchback cop lights - FOR YOU BRIAN
- Added ability to impound vehicles for SAS members above level 2 (Crisis Operator & above)
- Fixed SAS paycheck amounts (200,300,500,600,700 to 200,300,400,500,600)
- SAS members now have the ability to pullout players from any vehicles (similar to SAPD)
- Players can now pullout players from their own vehicles if they are stationary
- Changed revive animation
- Altered the deathcam
- SAS members can now see other SAS members on the map + altered dead markers for SAS
- Fixed not being able to escort ziptied SAPD members
- Increased diameter of gather zones
- Gathering resources is randomized from 1 to X, where X is 3 for legal resouses and X is 2 for illegal resources.
- Damage calculations are edited. No more instant heals by taze or vdm
- Sorted all the Lists!
- Disabled all the radio spam and ai voices
- Added lockpicks to medic market
- Decreased fatigue on over-eating
- Added many, many, many new food items. Eating these new food items will not result in over-eating fatigue and sets food to 100
- Added Road cones, Road barriers, Tapes, Arrows for SAPD to control an area. Like real cops!
- SAS members can now purchase and give out lollipops to our citizens
- More items are now removed on being arrested
- All the new items are saved and persistant in your inventory
- Markets are now alphabetized