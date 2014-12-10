SimplyAltis Development
======
This is the source code for the SimplyAltis Arma 3 Server.

ToDo - 12/5/14
------
- [ ] more crafting
- [ ] dynamic markets
- [ ] fix bugs
- [x] save civ positions
- [ ] bounty hud
- [ ] bounty hunter fixes/features: taze/arrest only wanted, alert bounty, 30 round mags, player tag icon, pullout players
- [ ] posting on forums = +1000 per post
- [ ] auto donator setup
- [ ] whitelisting forms
- [x] new billboards === MISSIONFILE
- [x] new food places === MISSIONFILE
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
- [x] remove school in kavala === MISSIONFILE
- [ ] move stuff in kavala === MISSIONFILE
- [ ] split bank accounts
- [ ] centralize messages: restrain msg for cops, etc.
- [x] shrink pbo, shrink textures
- [x] new music
- [ ] add to wanted list
- [ ] add npc loadouts === MISSIONFILE
- [x] hatchback lights
- [ ] replace createvehicle
- [x] Add: roadbarries, roadcone, tapesign, arrowleft, arrowright, lollipops(medic)
- [x] sort the lists
- [ ] finalize be filters
- [ ] optimize mission sqm file === MISSIONFILE
- [ ] change the server name + add slots to 120 + add more civ/cop/medic slots
- [x] add general store on rebel outposts === MISSIONFILE
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


WIP Changelog - 12/9/14
------
- Nothing Here


Skill System
------
- Gain xp by doing various tasks
- 25 levels in total. Each level has an exponential xp requirement. Each level gives you skill points
- There are more things to spend skill points on then there are skill points. So people have to think before spending skill points


Skill Tree
------
- Burglar
   - Level 1 : LockPicking(10%)
   - Level 2 : BoltCutters(10%)
   - Level 3 : LockPicking(25%) + BoltCutters(25%)
   - Level 4 : LockPicking Chance(50%)
   - Level 5 : Chance of Wanted-List Avoidance(10%)
   - Level 6 : LockPicking(50%) + BoltCutters(50%)
   - Level 7 : Chance of Wanted-List Avoidance(25%)
