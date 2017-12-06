DROP TABLE IF EXISTS _CONDITIONAL_ATTACK;
CREATE TABLE _CONDITIONAL_ATTACK (name text, body text);

begin;

insert into _CONDITIONAL_ATTACK values('_back', 'backstabbed');
insert into _CONDITIONAL_ATTACK values('_back, _race_pc_dark, _race_gchief_dragon, _race_drakan, _race_lizardman, _race_naga', 'Backstabbed Asmodian players or Balaurs');
insert into _CONDITIONAL_ATTACK values('_back, _race_pc_light, _race_gchief_dragon, _race_drakan, _race_lizardman, _race_naga', 'Backstabbed Elyos players or Balaurs');
insert into _CONDITIONAL_ATTACK values('_class_fighter,_class_knight', 'Gladiators or Templars');
insert into _CONDITIONAL_ATTACK values('_class_ranger,_class_assassin,_class_priest,_class_chanter,_class_wizard,_class_elementallist', 'Rangers, Assassins, Clerics, Chanters, Sorcer(er/ess), Spiritmasters');
insert into _CONDITIONAL_ATTACK values('_class_ranger,_class_assassin,_class_priest,_class_chanter,_class_wizard,_class_elementallist,_class_bard,_class_gunner', 'Rangers, Assassins, Clerics, Chanters, Sorcer(er/ess), Spiritmasters, Songweavers / Bards, Gunslingers / Gunners');
insert into _CONDITIONAL_ATTACK values('_class_ranger,_class_priest,_class_chanter,_class_wizard,_class_elementallist', 'Rangers, Clerics, Chanters, Sorcer(er/ess), Spiritmasters');
insert into _CONDITIONAL_ATTACK values('_dmg_race_type_a', 'Warrior type');
insert into _CONDITIONAL_ATTACK values('_dmg_race_type_a, _dmg_race_type_b, _dmg_race_type_c, _dmg_race_type_d', ' ');
insert into _CONDITIONAL_ATTACK values('_dmg_race_type_b', 'Assassin type');
insert into _CONDITIONAL_ATTACK values('_dmg_race_type_c', 'Mage type');
insert into _CONDITIONAL_ATTACK values('_dmg_race_type_d', 'Special type');
insert into _CONDITIONAL_ATTACK values('_front', 'front-hit');
--insert into _CONDITIONAL_ATTACK values('_nflying', ' ');
insert into _CONDITIONAL_ATTACK values('_race_beast', 'Beasts');
insert into _CONDITIONAL_ATTACK values('_race_carrier', 'Carriers');
insert into _CONDITIONAL_ATTACK values('_race_construct', 'Constructs');
insert into _CONDITIONAL_ATTACK values('_race_dragon', 'Dragons');
insert into _CONDITIONAL_ATTACK values('_race_dragon_castle_door', 'Balaur Fortress Gates');
insert into _CONDITIONAL_ATTACK values('_race_dragon_castle_door,_race_gchief_dragon', 'Balaur Fortress gates and GChief Dragons');
insert into _CONDITIONAL_ATTACK values('_race_dragon_castle_door,_race_pc_dark_castle_door,_race_pc_light_castle_door', 'Fortress Gates');
insert into _CONDITIONAL_ATTACK values('_race_drakan', 'Drakans');
insert into _CONDITIONAL_ATTACK values('_race_elemental, deform', 'Elementals or Deformeds');
insert into _CONDITIONAL_ATTACK values('_race_gchief_dragon', 'GChief Dragons');
insert into _CONDITIONAL_ATTACK values('_race_gchief_dragon, _race_drakan, _race_lizardman, _race_naga', 'Balaur');
insert into _CONDITIONAL_ATTACK values('_race_gchief_dragon, _race_drakan, _race_lizardman, _race_naga, _race_pc_light, _race_pc_dark', 'Players or Balaurs');
insert into _CONDITIONAL_ATTACK values('_race_gchief_dragon,_race_gchief_light,_race_gchief_dark', 'Elyos, Asmodian, or Balaur Chiefs');
insert into _CONDITIONAL_ATTACK values('_race_gchief_light,_race_gchief_dark', 'Elyos or Asmodian Chiefs');
insert into _CONDITIONAL_ATTACK values('_race_livingwater', 'Living Waters');
insert into _CONDITIONAL_ATTACK values('_race_magicalmonster', 'Magical Monsters');
insert into _CONDITIONAL_ATTACK values('_race_naga', 'Nagas');
insert into _CONDITIONAL_ATTACK values('_race_outsider', 'Outsiders');
insert into _CONDITIONAL_ATTACK values('_race_pc_dark', 'Asmodians');
insert into _CONDITIONAL_ATTACK values('_race_pc_dark, _race_pc_light, _race_gchief_dragon, _race_drakan, _race_lizardman, _race_naga', 'Players or Balaurs');
insert into _CONDITIONAL_ATTACK values('_race_pc_light', 'Elyos');
insert into _CONDITIONAL_ATTACK values('_race_pc_light, _race_gchief_dragon, _race_drakan, _race_lizardman, _race_naga', 'Asmodian Players or Balaurs');
insert into _CONDITIONAL_ATTACK values('_race_pc_light,_race_pc_dark', 'Players');
insert into _CONDITIONAL_ATTACK values('_race_pc_light_castle_door, _race_pc_dark_castle_door, _race_dragon_castle_door', 'Fortress Gates');
insert into _CONDITIONAL_ATTACK values('_race_pc_light_castle_door,_race_pc_dark_castle_door', 'Asmodian or Elyos Fortress Gates');
insert into _CONDITIONAL_ATTACK values('_race_pc_light_castle_door,_race_pc_dark_castle_door, _race_dragon_castle_door', 'Fortress Gates');
insert into _CONDITIONAL_ATTACK values('_race_siegedrakan', 'Siege Drakans');
insert into _CONDITIONAL_ATTACK values('_race_siegedrakan,_race_construct', 'Siege Drakans or Constructs');
insert into _CONDITIONAL_ATTACK values('_race_tricodark', 'Tricodarks');
insert into _CONDITIONAL_ATTACK values('bleed', 'Bleeding');
insert into _CONDITIONAL_ATTACK values('bleed,snare,blind', 'Bleeding, Snared, or Blinded');
insert into _CONDITIONAL_ATTACK values('blind', 'Blinded');
insert into _CONDITIONAL_ATTACK values('curse', 'Cursed');
insert into _CONDITIONAL_ATTACK values('deform', 'Deformed');
insert into _CONDITIONAL_ATTACK values('disease', 'Diseased');
insert into _CONDITIONAL_ATTACK values('disease,paralyze', 'Diseased or Paralyzed');
insert into _CONDITIONAL_ATTACK values('fear', 'Feared');
insert into _CONDITIONAL_ATTACK values('openaerial', 'Aerial Thrusted');
insert into _CONDITIONAL_ATTACK values('paralyze', 'Paralyzed');
insert into _CONDITIONAL_ATTACK values('poison', 'Poisoned');
insert into _CONDITIONAL_ATTACK values('poison, stun', 'Poisoned or Stunned');
insert into _CONDITIONAL_ATTACK values('root', 'Rooted');
insert into _CONDITIONAL_ATTACK values('silence', 'Silenced');
insert into _CONDITIONAL_ATTACK values('silence,bleed,blind', 'Silenced, Bleeding, or Blinded');
insert into _CONDITIONAL_ATTACK values('silence,bleed,snare', 'Silenced, Bleeding, or Snared');
insert into _CONDITIONAL_ATTACK values('silence,snare,blind', 'Silenced, Snared, or Blinded');
insert into _CONDITIONAL_ATTACK values('sleep', 'Sleeping');
insert into _CONDITIONAL_ATTACK values('snare', 'Snared');
insert into _CONDITIONAL_ATTACK values('stumble', 'Stumbled');
insert into _CONDITIONAL_ATTACK values('stumble,stun,stagger', 'Stumbled, Stunned, Staggered');
insert into _CONDITIONAL_ATTACK values('stun', 'Stunned');
--insert into _CONDITIONAL_ATTACK values('stun,stumble,stagger,paralyze,snare,root,sleep,bleed,poison,curse,silence,blind,bind', ' ');
/*
insert into _CONDITIONAL_ATTACK values ('Bleed', 'Bleeding');
insert into _CONDITIONAL_ATTACK values ('Curse', 'Cursed');
insert into _CONDITIONAL_ATTACK values ('Disease', 'Diseased');
insert into _CONDITIONAL_ATTACK values ('OpenAerial', 'Aerial Hold');
insert into _CONDITIONAL_ATTACK values ('Paralyze', 'Paralyzed');
insert into _CONDITIONAL_ATTACK values ('Poison', 'Poisoned');
insert into _CONDITIONAL_ATTACK values ('Poison, Stun', 'Poisoned or Stunned');
insert into _CONDITIONAL_ATTACK values ('Silence', 'Silenced');
insert into _CONDITIONAL_ATTACK values ('Sleep', 'Sleeping');
insert into _CONDITIONAL_ATTACK values ('Snare', 'Snared');
insert into _CONDITIONAL_ATTACK values ('Stumble', 'Stumbled');
insert into _CONDITIONAL_ATTACK values ('Stumble,Stun,Stagger', 'Stumbled, Stunned, or Stagger');
insert into _CONDITIONAL_ATTACK values ('Stun', 'Stunned');
insert into _CONDITIONAL_ATTACK values ('_Back', 'backstabbed');
insert into _CONDITIONAL_ATTACK values ('_Back, _Race_PC_Dark, _Race_GChief_Dragon, _Race_Drakan, _Race_lizardman, _Race_naga', 'Backstabbed Asmodian players or Balaurs');
insert into _CONDITIONAL_ATTACK values ('_Back, _Race_PC_Light, _Race_GChief_Dragon, _Race_Drakan, _Race_lizardman, _Race_naga', 'Backstabbed Elyos players or Balaurs');
insert into _CONDITIONAL_ATTACK values ('_Class_Fighter,_Class_Knight', 'Gladiators or Templars');
insert into _CONDITIONAL_ATTACK values ('_Front', 'front-hit');
insert into _CONDITIONAL_ATTACK values ('_Race_Carrier', 'Carrier race');
insert into _CONDITIONAL_ATTACK values ('_Race_Construct', 'Construct race');
insert into _CONDITIONAL_ATTACK values ('_Race_Dragon_Castle_Door', 'Balaur Fortress gates');
insert into _CONDITIONAL_ATTACK values ('_Race_GChief_Dragon', 'Dragon GChief');
insert into _CONDITIONAL_ATTACK values ('_Race_GChief_Dragon, _Race_Drakan, _Race_lizardman, _Race_naga', 'Balaur race');
insert into _CONDITIONAL_ATTACK values ('_Race_GChief_Light,_Race_GChief_Dark', 'GChiefs');
insert into _CONDITIONAL_ATTACK values ('_Race_LivingWater', 'Living Water race');
insert into _CONDITIONAL_ATTACK values ('_Race_PC_Light,_Race_PC_Dark', 'Player characters');
insert into _CONDITIONAL_ATTACK values ('_Race_PC_Light_Castle_door, _Race_PC_Dark_Castle_door, _Race_Dragon_Castle_Door', 'Fortress gates');
insert into _CONDITIONAL_ATTACK values ('_Race_PC_Light_Castle_door,_Race_PC_Dark_Castle_door', 'Asmodian or Elyos Fortress gates');
insert into _CONDITIONAL_ATTACK values ('_Race_PC_Light_Castle_door,_Race_PC_Dark_Castle_door, _Race_Dragon_Castle_Door', 'Fortress gates');
insert into _CONDITIONAL_ATTACK values ('_Race_TricoDark', 'Dark Trico race');
insert into _CONDITIONAL_ATTACK values ('_Race_pc_light_Castle_Door,_Race_pc_dark_Castle_Door', 'Non-Balaur Fortress Gates');
insert into _CONDITIONAL_ATTACK values ('_dmg_race_type_A', 'Warrior type');
insert into _CONDITIONAL_ATTACK values ('_dmg_race_type_A, _dmg_race_type_B, _dmg_race_type_C, _dmg_race_type_D', 'Warrior/Assassin/Mage/Special type');
insert into _CONDITIONAL_ATTACK values ('_dmg_race_type_B', 'Assassin type');
insert into _CONDITIONAL_ATTACK values ('_dmg_race_type_C', 'Mage type');
insert into _CONDITIONAL_ATTACK values ('_dmg_race_type_D', 'Special type');
--insert into _CONDITIONAL_ATTACK values ('_nFlying'
--insert into _CONDITIONAL_ATTACK values ('_nflying
insert into _CONDITIONAL_ATTACK values ('curse', 'Cursed');
insert into _CONDITIONAL_ATTACK values ('stumble', 'Stumbled');
insert into _CONDITIONAL_ATTACK values ('stun', 'Stunned');
*/
commit;

/*
Bleed
Bleed,Snare,Blind
Blind
Curse
Deform
Disease
Disease,Paralyze
Fear
OpenAerial
Paralyze
Poison
Poison, Stun
Silence
Silence,Bleed,Blind
Silence,Bleed,Snare
Silence,Snare,Blind
Sleep
Snare
Stumble
Stumble,Stun,Stagger
Stun
Stun,Stumble,Stagger,Paralyze,Snare,Root,Sleep,Bleed,Poison,Curse,Silence,Blind,Bind
_Back
_Back, _Race_PC_Dark, _Race_GChief_Dragon, _Race_Drakan, _Race_lizardman, _Race_naga
_Back, _Race_PC_Light, _Race_GChief_Dragon, _Race_Drakan, _Race_lizardman, _Race_naga
_Class_Fighter,_Class_Knight
_Class_ranger,_Class_assassin,_Class_priest,_Class_chanter,_Class_wizard,_Class_elementallist
_Class_ranger,_Class_assassin,_Class_priest,_Class_chanter,_Class_wizard,_Class_elementallist,_Class_bard,_Class_gunner
_Class_ranger,_Class_priest,_Class_chanter,_Class_wizard,_Class_elementallist
_Front
_Race_Beast
_Race_Carrier
_Race_Construct
_Race_Dragon
_Race_Dragon_Castle_Door
_Race_Dragon_Castle_Door,_Race_GChief_Dragon
_Race_Dragon_Castle_Door,_Race_PC_Dark_Castle_door,_Race_PC_Light_Castle_door
_Race_Drakan
_Race_Elemental, Deform
_Race_GChief_Dragon
_Race_GChief_Dragon, _Race_Drakan, _Race_lizardman, _Race_naga
_Race_GChief_Dragon, _Race_Drakan, _Race_lizardman, _Race_naga, _Race_PC_Light, _Race_PC_dark
_Race_GChief_Dragon,_Race_GChief_Light,_Race_GChief_Dark
_Race_GChief_Light,_Race_GChief_Dark
_Race_LivingWater
_Race_Outsider
_Race_PC_Dark
_Race_PC_Dark, _Race_PC_Light, _Race_GChief_Dragon, _Race_Drakan, _Race_lizardman, _Race_naga
_Race_PC_Light
_Race_PC_Light, _Race_GChief_Dragon, _Race_Drakan, _Race_lizardman, _Race_naga
_Race_PC_Light,_Race_PC_Dark
_Race_PC_Light_Castle_door, _Race_PC_Dark_Castle_door, _Race_Dragon_Castle_Door
_Race_PC_Light_Castle_door,_Race_PC_Dark_Castle_door
_Race_PC_Light_Castle_door,_Race_PC_Dark_Castle_door, _Race_Dragon_Castle_Door
_Race_SiegeDrakan
_Race_SiegeDrakan,_Race_Construct
_Race_TricoDark
_Race_dragon
_Race_drakan
_Race_pc_light_Castle_Door,_Race_pc_dark_Castle_Door
_dmg_Race_Type_C
_dmg_Race_Type_D
_dmg_race_type_A
_dmg_race_type_A, _dmg_race_type_B, _dmg_race_type_C, _dmg_race_type_D
_dmg_race_type_B
_dmg_race_type_C
_dmg_race_type_D
_nFlying
_nflying
_race_Construct
_race_MagicalMonster
_race_naga
bleed
curse
fear
paralyze
root
snare
stumble
stun
*/